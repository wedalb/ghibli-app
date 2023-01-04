//
//  InfoView.swift
//  mandatoryChallenge
//
//  Created by Heidi Albarazi on 19.04.22.
//

import SwiftUI

/**
 This InfoView contains information about the author as well as some
 */
struct InfoScreen: View {
    var body: some View {
        ScrollView{
            VStack{
                Image("AppLogo")
                    .resizable()
                    .frame(width: 175, height: 175, alignment: .center)
                    .padding()
                Text("Hello, User!")
                    .font(.title)
                Divider().padding()
                Text("Thank you for using my app. If you have any suggestions or questions about it or just randomly want to say hi, feel free to send me an email!").padding()
                    
            
                Divider().padding()
                
                Text("**Author:** Heidi Albarazi")
                Text("**E-Mail:** [heidialbarazi2306@gmail.com](mailto:heidialbarazi2306@gmail.com)")
            }.padding()
        }
    }
}

