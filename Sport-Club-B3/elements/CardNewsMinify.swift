//
//  CardNewsMinify.swift
//  Sport-Club-B3
//
//  Created by Eden MALO on 08/06/2022.
//

import SwiftUI

struct CardNewsMinify: View {
    var body: some View {
        
        VStack {
            HStack {
                VStack(alignment: .center, spacing: 0) {
                    SquarePicture(imageUrl: "img-bg-team", size: 80)
                        .padding(.bottom, 10)
                    Chip(label: "fans", isSolid: true)
                        
                }
                .frame(width: 80)
                
                VStack(alignment: .leading, spacing: 0) {
                    VStack(alignment: .leading, spacing: 0) {
                        Text("RÉSULTATS DU WEEK-END")
                            .fontWeight(.bold)
                            .textCase(.uppercase)
                            .lineLimit(1)
                        Text("Résultats du week-end 23/24 avril 2022. Peu de matchs joués ce week-end (vacances scolaires obligent) mais 2 premiers titres pour l'équipe.")
                            .font(.footnote)
                            .lineLimit(3)
                    }
                    .padding(.bottom, 20)
                    
                    HStack(spacing: 0) {
                        HStack(spacing: 0) {
                            Image(systemName: "calendar")
                                .padding(.trailing, 6)
                            
                            Text("Il y a 7 heures")
                                .lineLimit(1)
                                .font(.footnote)
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                                
                        Button("Lire") {}
                            .font(.system(size: 12))
                            .padding(.vertical, 5)
                            .padding(.horizontal, 20)
                            .textCase(.uppercase)
                            .scaledToFill()
                            .minimumScaleFactor(0.5)
                            .lineLimit(1)
                            .foregroundColor(.white)
                            .background(Color.black)
                            .cornerRadius(4)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    .frame(maxWidth: .infinity)
                    
                }
            }
            .padding(.all, 10)
        }
//        .border(.black, width: 1.5)
        .background(Color("bgColor"))
        .padding(.bottom, 20)
    }
}

struct CardNewsMinify_Previews: PreviewProvider {
    static var previews: some View {
        CardNewsMinify()
            .previewLayout(.sizeThatFits)
    }
}
