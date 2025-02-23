package com.classy.placelog.place.controller

import com.classy.placelog.place.controller.data.PlaceForm
import com.classy.placelog.place.entity.Place
import com.classy.placelog.place.service.PlaceService
import io.swagger.v3.oas.annotations.Hidden
import org.springframework.security.access.annotation.Secured
import org.springframework.security.core.annotation.AuthenticationPrincipal
import org.springframework.security.core.userdetails.UserDetails
import org.springframework.stereotype.Controller
import org.springframework.ui.Model
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.PathVariable
import org.springframework.web.bind.annotation.PostMapping

@Hidden
@Controller
class PlaceController(
    private val placeService: PlaceService,
) {
    @GetMapping("place")
    fun placeList(): String {
        return "place/placeList"
    }

    @GetMapping("/place/{id}")
    fun placeDetail(
        @PathVariable id: Long,
        model: Model
    ): String {
        val place: Place = placeService.getPlace(id)
        model.addAttribute("place", place)
        return "place/placeDetail"
    }

    @GetMapping("/place/{id}/edit")
    fun getPlaceEditPage(
        @PathVariable id: Long,
        @AuthenticationPrincipal userDetails: UserDetails,
        model: Model
    ): String {
        val place: Place = placeService.getPlace(id)
        model.addAttribute("place", place)
        return "place/placeDetail"
    }

    @PostMapping("/place/{id}/edit")
    fun editPlace(
        @PathVariable id: Long,
        @AuthenticationPrincipal userDetails: UserDetails,
    ): String {
        return "redirect:/place/${id}"
    }

    @PostMapping("/place/{id}/delete")
    fun deletePlace(
        @PathVariable id: Long,
        @AuthenticationPrincipal userDetails: UserDetails,
        model: Model,
    ): String {
        TODO("Not yet implemented")
    }


    @GetMapping("/place-create")
    fun createPlace(model: Model): String {
        model.addAttribute("placeForm", PlaceForm("", "", null))
        return "place/createPlace"
    }

    @Secured
    @PostMapping("/place-create")
    fun createPlace(
        placeForm: PlaceForm,
        @AuthenticationPrincipal userDetails: UserDetails,
    ): String {
        val place: Place = placeService.createPlace(placeForm)
        return "redirect:/place/${place.id}"
    }
}
