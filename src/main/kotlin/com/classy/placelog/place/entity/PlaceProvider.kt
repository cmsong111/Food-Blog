package com.classy.placelog.place.entity

import jakarta.persistence.Column
import jakarta.persistence.Embeddable

@Embeddable
data class PlaceProvider(
    @Column(name = "provider_name")
    val name: String,
    @Column(name = "provider_id")
    val id: String,
)
