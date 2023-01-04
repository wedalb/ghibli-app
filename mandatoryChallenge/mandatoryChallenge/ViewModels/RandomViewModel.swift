//
//  RandomViewModel.swift
//  mandatoryChallenge
//
//  Created by Heidi Albarazi on 19.04.22.
//

import Foundation
import Logging

class RandomViewModel : ObservableObject {
    
    private var movies: [GhibliMovie] = []
    @Published var movie: GhibliMovie?
    @Published var loading = false
    @Published var hasError = false
    private let logger = Logger(label: "RandomViewModel")
    
    func load() async {
        logger.info("Loading movies")
        DispatchQueue.main.async {
            self.loading = true
            self.hasError = false
        }
        do {
            try movies = await DataLoader.shared.fetchGhibliData(type: .films)
        } catch {
            logger.error("Error: \(error)")
            DispatchQueue.main.async {
                self.hasError = true
            }
        }
        DispatchQueue.main.async {
            self.loading = false
        }
    }
    
    func shuffle() {
        movie = movies.randomElement()
    }
}

