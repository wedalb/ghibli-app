//
//  RandomMovieView.swift
//  mandatoryChallenge
//
//  Created by Heidi Albarazi on 19.04.22.
//

import SwiftUI
import ConfettiSwiftUI

/**
 The RandomMovieView is a view that displays a button. Once the button is pressed it chooses a random movie for you. When pressing the button a Confetti Animation is displayed using ConfettiSwiftUI
 */
struct RandomMovieScreen: View {
    @StateObject var model = RandomViewModel()
    @State private var counter: Int = 0
    
    var body: some View {
        NavigationView {
            HStack(alignment: .top, spacing: 5){
                VStack {
                    Text("Press the Randomize Button to get a suggested movie to watch! By tapping the movie title you can view more details about that movie. If you didn't like the movie you can press the randomizer again and get a different movie!")
                        .padding()
                    
                    Spacer()
                    
                    
                    if model.hasError {
                        VStack {
                            Spacer()
                            Text("An Error has occurred.")
                                .font(.title)
                                .foregroundColor(.red)
                                .padding()
                            Button(action: {
                                Task{
                                    await model.load()
                                }
                            }){
                                HStack {
                                    Image(systemName: "goforward")
                                        .font(.title)
                                    Text("Try Again! ")
                                        .fontWeight(.semibold)
                                        .font(.title2)
                                }
                                .padding()
                                .foregroundColor(Color("backgroundColor"))
                                .background(Color.accentColor)
                                .cornerRadius(40)
                            }.padding()
                            Spacer()
                            Spacer()
                        }
                    } else if model.loading {
                        ProgressView().progressViewStyle(.circular)
                    } else if model.movie != nil {
                        NavigationLink(destination: MovieDetailView(movie: model.movie!)) {
                            RandomMovie(movie: model.movie!)
                        }
                    }
                    
                    Spacer()
                    
                    // Button with confetti animation
                    if !model.loading && !model.hasError {
                        Button(action: {
                            counter += 1
                            model.shuffle()
                        }){
                            HStack {
                                Image(systemName: "dice.fill")
                                    .font(.title)
                                Text("Randomize")
                                    .fontWeight(.semibold)
                                    .font(.title)
                            }
                            .padding()
                            .foregroundColor(Color("backgroundColor"))
                            .background(Color.accentColor)
                            .cornerRadius(40)
                        }
                            .confettiCannon(counter: $counter)
                    }
                    Spacer()
                    
                }.navigationTitle("Random Movie")
            }
        }
        .task { await model.load() }
        
    }
}

