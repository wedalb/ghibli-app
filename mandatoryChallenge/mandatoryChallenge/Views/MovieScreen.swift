//
//  MoviewsV.swift
//  mandatoryChallenge
//
//  Created by Heidi Albarazi on 18.04.22.
//

import SwiftUI

var movies: [GhibliMovie]?

/**
 The MovieScreen is the screen that appears when we want to view all movies as a list. It loads the MovieListView to display the movies as a list.
 */
struct MovieScreen: View {
    var body: some View {
        MovieListView()
    }
}

