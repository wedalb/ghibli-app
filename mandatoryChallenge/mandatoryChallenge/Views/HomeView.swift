//
//  HomeView.swift
//  mandatoryChallenge
//
//  Created by Heidi Albarazi on 19.04.22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        TabView{
            RandomMovieScreen().tabItem {
                Image(systemName: "dice.fill")
                Text("Random Movie")
            }
            MovieScreen().tabItem{
                Image(systemName: "list.and.film")
                Text("Movies")
            }
            InfoScreen().tabItem{
                Image(systemName: "info.circle")
                Text("About")
            }
        }
    }
}
