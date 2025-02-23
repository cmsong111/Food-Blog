package com.classy.placelog.place.repository

import com.classy.placelog.place.entity.Place
import com.classy.placelog.place.entity.PlaceProvider
import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.stereotype.Repository

@Repository
interface PlaceRepository : JpaRepository<Place, Long> {
    fun findByProvider(placeProvider: PlaceProvider): Place?
}
