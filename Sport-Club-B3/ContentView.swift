//
//  ContentView.swift
//  Sport-Club-B3
//
//  Created by Eden MALO on 17/05/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            ZStack {
                Color(.white)
                    .ignoresSafeArea()
                    .padding()

                VStack(alignment: .center, spacing: 0) {
                    ///- BARRE DU HAUT
                    SubheaderView(
                        title: "JS Cherbourg", goToHome: true
                    )
                    
                    ///- RÉCAPITULATIF DE L'ÉQUIPE
                    RecapTeamView()
                    
                    ///- DERNIER MATCH
                    SubheaderView(
                        title: "Dernier Match", goToHome: false
                    )
                    CardMatchView(leagueName: "ProLigue", numDayInLeague: 27)
                    
                    ///- PROCHAIN MATCH
                    SubheaderView(
                        title: "Prochain Match", goToHome: false
                    )
                    CardMatchView(leagueName: "ProLigue", numDayInLeague: 27)
                    
                     
                    ///- ACTUALITÉS
                    SubheaderView(
                        title: "Actualités", goToHome: false
                    )
                    ContentLastNews(limit: 3)
                    
                    ///- CTA
                    CTAShopView()
                        .padding(.top, 50)
                    

                    ///- FOOTER
                    SubheaderView(
                        title: "🟣 PARCE QUE ICI C’EST CHERBOURG !", goToHome: false
                    )
                     
                    // Spacer()
                }
            }
        }
        // .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.locale, Locale(identifier: "fr"))
    }
}
