package com.classy.placelog.place.controller

import com.classy.placelog.place.entity.Place
import com.classy.placelog.place.service.PlaceService
import io.swagger.v3.oas.annotations.Operation
import io.swagger.v3.oas.annotations.tags.Tag
import org.springdoc.core.annotations.ParameterObject
import org.springframework.data.domain.Page
import org.springframework.data.domain.Pageable
import org.springframework.data.domain.Sort
import org.springframework.data.web.PageableDefault
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController

@Tag(name = "장소 API")
@RestController
@RequestMapping("/api/place")
class PlaceRestController(
    private val placeService: PlaceService,
) {
    @Operation(summary = "장소 목록 조회")
    @GetMapping
    fun getPlaceList(
        @PageableDefault(sort = ["createdAt"], direction = Sort.Direction.DESC)
        @ParameterObject pageable: Pageable,
    ): Page<Place> {
        return placeService.getPlaceList(pageable)
    }
}
