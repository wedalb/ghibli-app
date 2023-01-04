//
//  MovieDetail.swift
//  mandatoryChallenge
//
//  Created by Heidi Albarazi on 18.04.22.
//

import SwiftUI

/**
 The MovieDetailView displays more detail about a ghibli movie. It gets the movie as a parameter and displays all important informations as well as the image of the movie.
 - Parameter movie: A ghibli movie
 */
struct MovieDetailView: View {
    let movie: GhibliMovie
    
    var body: some View {
        ScrollView{
            VStack{
                
                // H Stack to display the movie image and the basic information on top
                HStack (alignment: .center){

                    AsyncImage(url: URL(string: movie.image)!){ image in
                        image
                            .resizable()
                            .frame(width: 120, height: 180)
                            .aspectRatio(contentMode: .fit)
                            .clipShape(RoundedRectangle(cornerRadius: 10.0))
                            .overlay{
                                RoundedRectangle(cornerRadius: 10.0).stroke(.white, lineWidth: 4)
                                
                            }
                            .shadow(color: Color("TextColor"), radius:7 )
                            .padding()
                    } placeholder: {
                        ProgressView()
                    }
                    
                    // The VStack displays the title and some basic information about the movie
                    VStack(alignment: .center){
                        Text(movie.title)
                            .font(.title)
                            .padding(0.5)
                        Text(movie.originalTitle)
                            .font(.headline)
                        Text(movie.originalTitleRomanised)
                            .font(.subheadline)
                            .opacity(0.5)
                        
                        // This VStack is to align the director, producer etc
                        VStack (alignment: .leading) {
                            Text("**Director:** \(movie.director)")
                                .font(.caption)
                            Text("**Producer:** \(movie.producer)")
                                .font(.caption)
                            Text("**Release Date:** \(movie.releaseDate)")
                                .font(.caption)
                            Text("**Running Time:** \(movie.runningTime) minutes")
                                .font(.caption)
                        }.padding()
                    }.padding()
                }
                
                // A VStack to display the description
                VStack(alignment: .leading){
                    Divider()
                    Text(movie.description)
                        .padding()
                    
                    Divider()
                    Spacer()
                }.padding()

            }
        }
    }
}

