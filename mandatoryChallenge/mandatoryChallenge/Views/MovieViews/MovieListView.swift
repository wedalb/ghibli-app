//
//  MovieListView.swift
//  mandatoryChallenge
//
//  Created by Heidi Albarazi on 14.04.22.
//

import SwiftUI


/**
 The MovieListView creates a listview out of all movies that we have and uses the MovieRow View to display them in a list.
 - Parameter movie: An Array of GhibliMovies that we will display in the list.
 */
struct MovieListView: View {
    
    @StateObject var model = MovieListViewModel()
    
    var body: some View {
        NavigationView {
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
                
            } else {
                List(model.sortedMovies, id: \.id){ movie in
                    NavigationLink(destination: MovieDetailView(movie: movie)) {
                        MovieRow(movie: movie)
                    }
                }
                .navigationTitle("Movies")
                .toolbar {
                    Menu {
                        Text("Sort")
                        Button(action: {
                            model.setByTitleDescending(isDescending: !model.sortByTitleDescending)
                        }, label: {
                            let arrowType = model.sortByTitleDescending ? "down" : "up"
                            Image(systemName: "arrow.\(arrowType)")
                            Text("Alphabetically")
                        })
                    } label: {
                        Image(systemName: "ellipsis.circle")
                    }
                } }
        }.task { await model.load() }
    }
}


