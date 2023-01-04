//
//  MovieListViewModel.swift
//  mandatoryChallenge
//
//  Created by Heidi Albarazi on 19.04.22.
//


import Foundation
import Logging

class MovieListViewModel : ObservableObject {
    @Published var movies: [GhibliMovie] = []
    @Published var sortByTitleDescending = false
    @Published var hasError = false
    
    
    
    private let logger = Logger(label: "MovieListViewModel")
    
    var sortedMovies: [GhibliMovie] {
        if sortByTitleDescending {
            return movies.sorted { (lhs: GhibliMovie, rhs: GhibliMovie) -> Bool in
                return lhs.title > rhs.title
            }
        } else {
            return movies.sorted { (lhs: GhibliMovie, rhs: GhibliMovie) -> Bool in
                return lhs.title < rhs.title
            }
        }
    }
    
    func setByTitleDescending(isDescending: Bool) {
        sortByTitleDescending = isDescending
    }
    
    func load() async {
        logger.info("Loading movies")
        DispatchQueue.main.async {
            self.hasError = false
        }
        do {
            let movies: [GhibliMovie]
            try movies = await DataLoader.shared.fetchGhibliData(type: .films)
            DispatchQueue.main.async { // to publish movies in main thread
                self.movies = movies
            }
            logger.info("loading movies")
        } catch {
            logger.error("Error: \(error)")
            DispatchQueue.main.async {
                self.hasError = true
            }
        }
    }
}
