//
//  RandomMovie.swift
//  mandatoryChallenge
//
//  Created by Heidi Albarazi on 19.04.22.
//

import SwiftUI

/**
 The RandomMovie View is a view that manages the randomization of the movie. It picks a random one once pressed on the button.
 - Parameter movie: A GhibliMovie that gets passed into this view by RandomMovieScreen. It already contains the random movie
 */
struct RandomMovie: View {
    let movie: GhibliMovie
    
    var body: some View {
        VStack{
            AsyncImage(url: URL(string: movie.image)!){ image in
                image
                    .resizable()
                    .frame(width: 120, height: 180)
                    .aspectRatio(contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 10.0))
                    .overlay{
                        RoundedRectangle(cornerRadius: 10.0).stroke(.white, lineWidth: 4)
                        
                    }
                    .shadow(color: Color("TextColor") , radius:7 )
                    .padding()
            } placeholder: {
                ProgressView()
            }
            
            Text(movie.title)
                .padding()
                .font(.title2)
        }

    }
}
