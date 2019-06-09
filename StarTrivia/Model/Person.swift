//
//  Person.swift
//  StarTrivia
//
//  Created by Pardip Bhatti on 26/04/19.
//  Copyright © 2019 Pardip Bhatti. All rights reserved.
//

import Foundation

struct Person : Codable {
    let name: String
    let height: String
    let mass: String
    let hair: String
    let birthYear: String
    let gender: String
    let homeworldUrl: String
    let filmUrls: [String]
    let vehicleUrls: [String]
    let starShipUrls: [String]
    
    enum CodingKeys: String, CodingKey {
        case name
        case height
        case mass
        case hair = "hair_color"
        case birthYear = "birth_year"
        case gender
        case homeworldUrl = "homeworld"
        case filmUrls = "films"
        case vehicleUrls = "vehicles"
        case starShipUrls = "starships"
    }
}
