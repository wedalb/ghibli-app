//
//  GhibliCharacters.swift
//  mandatoryChallenge
//
//  Created by Heidi Albarazi on 17.04.22.
//

import Foundation

/**
 A struct about acharacter that plays in a ghibli movie
 see more here: https://ghibliapi.herokuapp.com/#tag/People
 */
struct GhibliCharacter : Decodable {
    
    let id, name, gender, age, eyeColor, hairColor : String
    
    let movies: [String]
    let species: String
}
