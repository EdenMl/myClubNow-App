//
//  ContentView.swift
//  Sport-Club-B3
//
//  Created by Eden MALO on 17/05/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color("primaryColor")
                .ignoresSafeArea()
            
            ScrollView {
                ZStack {
                    Color(.white)
                        .ignoresSafeArea()
                        .padding()
                    
                    VStack(alignment: .center, spacing: 0) {
                        ///- BARRE DU HAUT
                        SubheaderView(title: "JS Cherbourg")
                        
                        ///- RÉCAPITULATIF DE L'ÉQUIPE
                        RecapTeamView()
                        
                        ///- DERNIER MATCH
                        SubheaderView(title: "Dernier Match")
                        CardMatchView(leagueName: "ProLigue", numDayInLeague: 27)

                        ///- PROCHAIN MATCH
                        SubheaderView(title: "Prochain Match")
                        CardMatchView(leagueName: "ProLigue", numDayInLeague: 27)


                        ///- ACTUALITÉS
                        SubheaderView(title: "Actualités")
                        ContentLastNews(limit: 3)

                        ///- CTA
                        CTAShopView()


                        ///- FOOTER
                        FooterView()

                        // Spacer()
                    }
                }
            }
            // .ignoresSafeArea()
            .padding(0)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.locale, Locale(identifier: "fr"))
    }
}
