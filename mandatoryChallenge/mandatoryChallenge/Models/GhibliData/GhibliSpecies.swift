//
//  GhibliSpecies.swift
//  mandatoryChallenge
//
//  Created by Heidi Albarazi on 17.04.22.
//

import Foundation


/**
 A struct about a fictional or non fictional species in a studio ghibli movie
 see more here: https://ghibliapi.herokuapp.com/#tag/Species
 */
struct GhibliSpecies : Decodable {
    
    let id, name, classification, eyeColor, hairColor : String
    
    let people: [String]
    let movies: [String]
}
