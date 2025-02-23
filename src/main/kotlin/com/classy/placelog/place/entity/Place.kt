package com.classy.placelog.place.entity

import com.classy.placelog.common.entity.BaseEntity
import jakarta.persistence.Column
import jakarta.persistence.Embeddable
import jakarta.persistence.Entity
import jakarta.persistence.GeneratedValue
import jakarta.persistence.GenerationType
import jakarta.persistence.Id

@Entity
class Place(
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    val id: Long = 0L,

    @Column(unique = true)
    val provider: PlaceProvider? = null,

    var name: String,

    var description: String,

    var thumbnail: String,
) : BaseEntity() {
    fun update(
        name: String,
        description: String,
        thumbnail: String,
    ) {
        this.name = name
        this.description = description
        this.thumbnail = thumbnail
    }
}


