//
//  CardNewsMinify.swift
//  Sport-Club-B3
//
//  Created by Eden MALO on 08/06/2022.
//

import SwiftUI

struct CardNewsMinify: View {
    var news: News
    @State private var isShowingDetailView = false

    var body: some View {
        
        VStack {
            HStack(alignment: .top) {
                if (news.pictureUrl != nil) {
                    VStack(alignment: .center, spacing: 0) {
                        SquareWebPicture(imageUrl: news.pictureUrl!, size: 80)
                            .padding(.bottom, 10)
                        
    //                    if news.acceptedRole > 10 {
    //                        Chip(label: news.displayAcceptedRole(), isSolid: true)
    //                    }
                    }
                    .frame(width: 80)
                }
                
                VStack(alignment: .leading, spacing: 0) {
                    VStack(alignment: .leading, spacing: 0) {
                        Text(news.title)
                            .fontWeight(.bold)
                            .textCase(.uppercase)
                            .lineLimit(1)
                        Text(news.content)
                            .font(.footnote)
                            .lineLimit(2)
                    }
                    .padding(.bottom, 20)
                    
                    HStack(spacing: 0) {
                        if news.acceptedRole > 10 {
                            Chip(label: news.displayAcceptedRole(), isSolid: true)
                        }
//                        HStack(spacing: 0) {
//                            Image(systemName: "calendar")
//                                .padding(.trailing, 6)
//
//                            Text("Il y a 7 heures")
//                                .lineLimit(1)
//                                .font(.footnote)
//                                .frame(maxWidth: .infinity, alignment: .leading)
//                        }
                           
                        
                        NavigationLink(destination: OneNewsView(news: news), isActive: $isShowingDetailView) {
                            EmptyView()
                        }
                        
                        Button("Lire") {
                            self.isShowingDetailView = true
                        }
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
        CardNewsMinify(news: News(id: 10, title: "RÉSULTATS DU WEEK-END", content: "Résultats du week-end 23/24 avril 2022. Peu de matchs joués ce week-end (vacances scolaires obligent) mais 2 premiers titres pour l'équipe.", acceptedRole: 10, active: true))
                .previewLayout(.sizeThatFits)
        
    }
}
