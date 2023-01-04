//
//  Movie.swift
//  mandatoryChallenge
//
//  Created by Heidi Albarazi on 17.04.22.
//

import Foundation
import SwiftUI
import CoreLocation

/**
 A struct for a studio ghibli movie
 see more here: https://ghibliapi.herokuapp.com/#tag/Films
 */
struct GhibliMovie: Decodable {
    
    let id, title, originalTitle, originalTitleRomanised, description, director, producer, releaseDate, runningTime, rtScore, image: String
    
    let people : [String]
    let species : [String]
    let locations : [String]
    let vehicles : [String]
}
