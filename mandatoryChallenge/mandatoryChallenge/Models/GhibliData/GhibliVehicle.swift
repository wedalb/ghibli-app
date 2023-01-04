//
//  GhibliVehicles.swift
//  mandatoryChallenge
//
//  Created by Heidi Albarazi on 17.04.22.
//

import Foundation

/**
 A struct about a vehicle in a studio ghibli movie
 see more here: https://ghibliapi.herokuapp.com/#tag/Vehicles
 */

struct GhibliVehicle : Decodable {
    
    let id, name, description, vehicleClass, length: String
    
    let pilot: String
    let movies: [String]
}
