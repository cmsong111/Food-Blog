package com.classy.placelog.place.api.data

import com.classy.placelog.place.api.BusanFoodService
import com.classy.placelog.place.entity.Place
import com.classy.placelog.place.entity.PlaceProvider
import com.fasterxml.jackson.annotation.JsonProperty

data class BusanFoodResponse(
    @JsonProperty("getFoodKr")
    var getFoodKr: GetFoodKr? = GetFoodKr(),
)

data class GetFoodKr(
    @JsonProperty("header")
    var header: Header? = Header(),
    @JsonProperty("item")
    var item: MutableList<Item> = arrayListOf(),
    @JsonProperty("numOfRows")
    var numOfRows: Int? = null,
    @JsonProperty("pageNo")
    var pageNo: Int? = null,
    @JsonProperty("totalCount")
    var totalCount: Int? = null,
)

data class Header(
    @JsonProperty("code")
    var code: String? = null,
    @JsonProperty("message")
    var message: String? = null,
)

data class Item(
    /** 콘텐츠ID */
    @JsonProperty("UC_SEQ")
    val ucSeq: Int?,
    /** 콘텐츠명 */
    @JsonProperty("MAIN_TITLE")
    val mainTitle: String?,
    /** 구군 */
    @JsonProperty("GUGUN_NM")
    val gugunNm: String?,
    /** 위도 */
    @JsonProperty("LAT")
    val lat: Double?,
    /** 경도 */
    @JsonProperty("LNG")
    val lng: Double?,
    /** 장소 */
    @JsonProperty("PLACE")
    val place: String?,
    /** 제목 */
    @JsonProperty("TITLE")
    val title: String?,
    /** 부제목 */
    @JsonProperty("SUBTITLE")
    val subtitle: String?,
    /** 주소 */
    @JsonProperty("ADDR1")
    val addr1: String?,
    /** 주소 기타 */
    @JsonProperty("ADDR2")
    val addr2: String?,
    /** 연락처 */
    @JsonProperty("CNTCT_TEL")
    val cntctTel: String?,
    /** 홈페이지 */
    @JsonProperty("HOMEPAGE_URL")
    val homepageUrl: String?,
    /** 운영 및 시간 */
    @JsonProperty("USAGE_DAY_WEEK_AND_TIME")
    val usageDayWeekAndTime: String?,
    /** 대표메뉴 */
    @JsonProperty("RPRSNTV_MENU")
    val rprsntvMenu: String?,
    /** 이미지URL */
    @JsonProperty("MAIN_IMG_NORMAL")
    val mainImgNormal: String?,
    /** 썸네일이미지URL */
    @JsonProperty("MAIN_IMG_THUMB")
    val mainImgThumb: String?,
    /** 상세내용 */
    @JsonProperty("ITEMCNTNTS")
    val itemcntnts: String?,
) {
    fun toPlace(): Place {
        return Place(
            name = this.title ?: "",
            description = this.itemcntnts ?: "",
            thumbnail = this.mainImgThumb ?: "",
            provider = PlaceProvider(
                name = BusanFoodService.API_NAME,
                id = this.ucSeq.toString(),
            ),
        )
    }
}
