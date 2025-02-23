package com.classy.placelog.place.api

import com.classy.placelog.configuration.properties.DataGoKrProperties
import com.classy.placelog.place.api.data.BusanFoodResponse
import com.classy.placelog.place.repository.PlaceRepository
import com.classy.placelog.place.service.SyncApiData
import com.fasterxml.jackson.databind.ObjectMapper
import io.github.oshai.kotlinlogging.KotlinLogging
import org.springframework.boot.context.properties.EnableConfigurationProperties
import org.springframework.http.HttpHeaders
import org.springframework.http.MediaType
import org.springframework.stereotype.Component
import org.springframework.web.client.RestClient
import org.springframework.web.util.DefaultUriBuilderFactory

@Component
@EnableConfigurationProperties(DataGoKrProperties::class)
class BusanFoodService(
    private val dataGoKrProperties: DataGoKrProperties,
    private val placeRepository: PlaceRepository,
) : SyncApiData {
    /** RestTemplate */
    private val restClient: RestClient = RestClient.builder()
        .uriBuilderFactory(
            DefaultUriBuilderFactory().apply {
                encodingMode = DefaultUriBuilderFactory.EncodingMode.NONE
            }
        )
        .build()

    override fun sync() {
        val foodList = getFoodList()
        foodList?.getFoodKr?.item?.map { item ->
            val tempPlace = item.toPlace()
            placeRepository.findByProvider(tempPlace.provider!!)?.apply {
                update(
                    name = tempPlace.name,
                    description = tempPlace.description,
                    thumbnail = tempPlace.thumbnail,
                )
            } ?: placeRepository.save(tempPlace)
        }
    }

    /**
     * 부산 맛집 데이터 조회
     * @param pageNo 페이지 번호
     * @param numOfRows 한 페이지 결과 수
     */
    fun getFoodList(
        pageNo: Int = 1,
        numOfRows: Int = 1000,
    ): BusanFoodResponse? {
        // API 서버가 application/json을 지원하지 않아서 String으로 받아서 직접 파싱
        // plain/text로 받아서 ObjectMapper로 직접 파싱
        val response: String? = restClient.get()
            .uri { uriBuilder ->
                uriBuilder.scheme("http").host("apis.data.go.kr")
                    .path("/6260000/FoodService/getFoodKr")
                    .queryParam("serviceKey", dataGoKrProperties.key)
                    .queryParam("pageNo", pageNo)
                    .queryParam("numOfRows", numOfRows)
                    .queryParam("resultType", "json")
                    .build()
            }
            .header(HttpHeaders.CONTENT_TYPE, MediaType.APPLICATION_JSON_VALUE)
            .accept(MediaType.APPLICATION_JSON)
            .retrieve()
            .body(String::class.java)

        return response?.let {
            ObjectMapper().readValue(it, BusanFoodResponse::class.java)
        }
    }

    init {
        log.info { "BusanFoodService init" }
    }

    companion object {
        const val API_NAME = "BUSAN_FOOD_API"
        val log = KotlinLogging.logger {}
    }
}
