//
//  ContentLastNews.swift
//  Sport-Club-B3
//
//  Created by Eden MALO on 08/06/2022.
//

import SwiftUI

struct ContentLastNews: View {
    @State var limit = 3
    var body: some View {
        VStack(alignment: .center, spacing: 0) {

            ForEach(0 ..< limit, id:\.self) { i in
                CardNewsMinify()
            }
            
            Button("Toutes les actualités") {}
                .font(.system(size: 12))
                .padding(.vertical, 10)
                .padding(.horizontal, 25)
                .textCase(.uppercase)
                .scaledToFill()
                .minimumScaleFactor(0.5)
                .lineLimit(1)
                .foregroundColor(.white)
                .background(Color.black)
                .cornerRadius(4)
        }
        .padding()
    }
}

struct ContentLastNews_Previews: PreviewProvider {
    static var previews: some View {
        ContentLastNews()
            .previewLayout(.sizeThatFits)
    }
}
