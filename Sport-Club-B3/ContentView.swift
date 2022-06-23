//
//  ContentView.swift
//  Sport-Club-B3
//
//  Created by Eden MALO on 17/05/2022.
//

import SwiftUI

struct ContentView: View {

    @StateObject var gD = GlobalData()
    
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
                        RecapTeamView(team: gD.allTeam[0])
                        
                        ///- DERNIER MATCH
                        Group {
                            SubheaderView(title: "Dernier Match")
                            CardMatchView(match: gD.allMatch[0], league: gD.allLeague[0])
                            CardMatchView(match: gD.allMatch[2], league: gD.allLeague[0])
                        }

                        ///- PROCHAIN MATCH
                        Group {
                            SubheaderView(title: "Prochain Match")
                            CardMatchView(match: gD.allMatch[1], league: gD.allLeague[0])
                        }


                        ///- ACTUALITÉS
                        Group {
                            SubheaderView(title: "Actualités")
                            ContentLastNews(limit: 3)
                        }

                        ///- CTA
                        CTAShopView()


                        ///- FOOTER
                        FooterView()

                        // Spacer()
                    }
                }
            }
            // .ignoresSafeArea()
            .navigationBarHidden(true)
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
