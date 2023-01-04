//
//  CardView.swift
//  mandatoryChallenge
//
//  Created by Heidi Albarazi on 13.04.22.
//

import SwiftUI
import ACarousel

struct Item: Identifiable {
    let id = UUID()
    let image: Image
}

// TODO: create an array of all imagenames or create an array of all images down below

let roles = ["Castle_in_the_sky", "Hayao_Miyasaki", "Cat_Returns", "Porco_Rosso", "Ponyo" ]

// created a cardview that has to be yet edited (cardview should contain image + info about movie in alphabetical order

struct CardView: View {
    
    
    
    let items: [Item] = roles.map { Item(image: Image($0)) }
    
    @State var spacing: CGFloat = 10
    @State var headspace: CGFloat = 10
    @State var sidesScaling: CGFloat = 0.8
    @State var isWrap: Bool = true
    @State var autoScroll: Bool = true
    @State var time: TimeInterval = 1
    
    
    // carousel view
    var body: some View {
        VStack {
            Spacer().frame(height: 30)
            ACarousel(items,
                      index: .constant(2),
                      spacing: spacing,
                      headspace: headspace,
                      sidesScaling: sidesScaling,
                      isWrap: isWrap,
                      autoScroll: autoScroll ? .active(time) : .inactive) {  item in
                item.image
                    .resizable()
                    .scaledToFill()
                    .frame(height: 300)
                    .cornerRadius(30)
            }
            .frame(height: 300)
            Spacer()

            
        }
    }
}

//TODO: add text description of the movies



struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(ColorScheme.allCases, id:\.self){
            CardView().preferredColorScheme($0)
        }
    }
}




