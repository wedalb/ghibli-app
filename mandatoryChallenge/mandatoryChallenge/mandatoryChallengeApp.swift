//
//  mandatoryChallengeApp.swift
//  mandatoryChallenge
//
//  Created by Heidi Albarazi on 13.04.22.
//

import SwiftUI
import Logging

/**
 This is the Main App. It controlls the views and gives them tasks. It also manages some logic and logger tasks.
 */
@main
struct mandatoryChallengeApp: App {
    
    private let logger = Logger(label: "App") //Logger
    
    // Tab functionality for the welcome view
    @State private var clickedWelcome = false
    
    var body: some Scene {
        WindowGroup {
            if (!clickedWelcome) {
                WelcomeScreen().task {
                    logger.info("Welcome Screen")
                }
                .contentShape(Rectangle())
                    .onTapGesture {
                        clickedWelcome = true
                    }
            } else {
                HomeView().task {
                    logger.info("redirecting to Homescreen")
                }
            }
        }
    }
}
