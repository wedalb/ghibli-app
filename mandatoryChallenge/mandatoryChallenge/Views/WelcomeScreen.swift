//
//  ContentView.swift
//  mandatoryChallenge
//
//  Created by Heidi Albarazi on 13.04.22.
//

import SwiftUI
import Logging


/**
 The Welcome Screen  appears when you open the App. It redirects you to the next screen by clicking anywhere. Its main purpose is to greet the user. Also it uses a custom font.
 */
struct WelcomeScreen :View {

    var body: some View {
        
        ZStack {
            
            // Blurred background image is a ghibli scene
            Image("backgroundImage")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                .blur(radius: 3.0)
            
            // I use a Rectangle with a gradient on top of it to make the text more visible
            Rectangle()
                .fill( LinearGradient(gradient: Gradient(colors: [Color.white, Color.indigo]),
                                      startPoint: .top,
                                      endPoint: .bottom))
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                .blendMode(BlendMode.overlay)
                .opacity(0.8)
            
            VStack {
                // Here I use the custom font PlayfairDisplay
                Text("Welcome Back")
                    .padding(.top, 2.0)
                    .font(Font.custom("../Playfair_Display/static/PlayfairDisplay-Regular", size: 34.0))
                    .foregroundColor(.white)
                    .opacity(0.9)
                    .shadow(radius: 7.0)
                Text("Tap anywhere to start")
                    .font(.subheadline)
                    .foregroundColor(.white)
                    .transition(.opacity)
                    .opacity(0.5)
                    .shadow(radius: 7.0)
                
                Spacer()
                    .frame( height: 200)
            }
        }
    }
}



