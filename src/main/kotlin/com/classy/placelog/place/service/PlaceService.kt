package com.classy.placelog.place.service

import com.classy.placelog.common.storage.StorageService
import com.classy.placelog.place.controller.data.PlaceForm
import com.classy.placelog.place.entity.Place
import com.classy.placelog.place.repository.PlaceRepository
import org.springframework.data.domain.Page
import org.springframework.data.domain.Pageable
import org.springframework.data.jpa.domain.AbstractPersistable_.id
import org.springframework.data.repository.findByIdOrNull
import org.springframework.stereotype.Service
import org.springframework.transaction.annotation.Transactional

@Service
class PlaceService(
    private val placeRepository: PlaceRepository,
    private val storageService: StorageService,
) {
    /**
     * 장소 목록 조회
     */
    @Transactional(readOnly = true)
    fun getPlaceList(pageable: Pageable): Page<Place> {
        return placeRepository.findAll(pageable)
    }

    /**
     * 특정 장소 목록 조회
     */
    @Transactional(readOnly = true)
    fun getPlace(id: Long): Place {
        return placeRepository.findByIdOrNull(id)
            ?: throw IllegalArgumentException("해당 ID의 장소가 존재하지 않습니다. id=$id")
    }

    /**
     * 장소 생성
     * @param placeForm 장소 생성 폼
     * @return 생성된 장소
     */
    @Transactional
    fun createPlace(placeForm: PlaceForm): Place {
        val thumbnailUrl: String? = placeForm.thumbnail?.let { storageService.save(it) }
        val place = Place(
            name = placeForm.name,
            description = placeForm.description,
            thumbnail = thumbnailUrl ?: "https://picsum.photos/id/1/1000",
        )
        return placeRepository.save(place)
    }

    /**
     * 장소 수정
     * @param placeId 장소 ID
     * @param placeForm 장소 생성 폼
     * @return 생성된 장소
     */
    @Transactional
    fun updatePlace(
        placeId: Long,
        placeForm: PlaceForm,
    ): Place {
        val place = placeRepository.findByIdOrNull(placeId)
            ?: throw IllegalArgumentException("해당 ID의 장소가 존재하지 않습니다. id=$id")

        val thumbnailUrl: String? = placeForm.thumbnail?.let { storageService.save(it) }
        place.name = placeForm.name
        place.description = placeForm.description
        thumbnailUrl?.let { place.thumbnail = it }
        return placeRepository.save(place)
    }
}
