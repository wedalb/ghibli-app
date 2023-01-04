//
//  GhibliLocation.swift
//  mandatoryChallenge
//
//  Created by Heidi Albarazi on 17.04.22.
//

import Foundation

/**
 A struct about a location in a studio ghibli movie
 see more here: https://ghibliapi.herokuapp.com/#tag/Locations
 */
struct GhibliLocation : Decodable {
    
    let id, name, climate, terrain, surfaceWater: String
    
    let movies: [String]
    let residents: [String]
}
