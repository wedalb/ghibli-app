//
//  MovieRow.swift
//  mandatoryChallenge
//
//  Created by Heidi Albarazi on 18.04.22.
//

import SwiftUI

/**
 The MovieRow View is the definition of each individual row inside of the Movie list.
 - Parameter movie: A GhibliMovie parameter that we extract the title and image of.
 */
struct MovieRow: View {
    let movie: GhibliMovie
    
    
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: movie.image)!, scale: 10)
                .clipShape(RoundedRectangle(cornerRadius: 5))
                .shadow(radius: 7.0)
            Text(movie.title)
                .font(.headline)
                .padding()
            
            Spacer()
        }
    }
}


