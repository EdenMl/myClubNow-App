//
//  CTAShopView.swift
//  Sport-Club-B3
//
//  Created by Eden MALO on 18/05/2022.
//

import SwiftUI

struct CTAShopView: View {
    var body: some View {
        ZStack {
            Color("bgColor")
            Image("img-bg-team")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .opacity(0.8)

            VStack {
                Link(destination: URL(string: "https://store.jscherbourg.fr")!) {
                    Text("Accès à la boutique".uppercased())
                        .font(.title)
                        .foregroundColor(.black)
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.center)
                }
                .padding()
            }
            .frame(width: 300, height: 100)
            .background()
            .padding()
        }
        .background(Color("bgColor"))
        .frame(height: 200)
    }
}

struct CTAShopView_Previews: PreviewProvider {
    static var previews: some View {
        CTAShopView()
            .previewLayout(.sizeThatFits)
    }
}
