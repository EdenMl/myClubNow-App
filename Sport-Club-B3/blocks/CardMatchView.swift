//
//  CardMatchView.swift
//  Sport-Club-B3
//
//  Created by Eden MALO on 07/06/2022.
//

import SwiftUI

struct CardMatchView: View {
    var leagueName: String
    var numDayInLeague: Int
    
    var body: some View {
        VStack(alignment: .center, spacing: 0) {            Text(leagueName + " - " + String(numDayInLeague) + "ème joumée")
                .padding()
                .font(.subheadline)
                .frame(
                    maxWidth: .infinity,
                   alignment: .leading
                )
                .background(Color.black.opacity(0.2))
            
            HStack(alignment: .center, spacing: 0) {
                VStack(alignment: .center, spacing: 0) {
                    RoundedPicture(
                        imageUrl: "logo",
                        size: 60
                    )
                    .padding()
                    
                    Text("🎉")
                        .bold()
                        .textCase(.uppercase)
                }
                .frame(maxWidth: .infinity)
                
                InformationMatchView()
                    .frame(maxWidth: .infinity)
                
                VStack(alignment: .center, spacing: 0) {
                    RoundedPicture(
                        imageUrl: "caen",
                        size: 60
                    )
                    .padding()
                    
                    Text("Caen")
                        .bold()
                        .textCase(.uppercase)
                }
                .frame(maxWidth: .infinity)
            }
            .padding(.horizontal, 10)
            .frame(width: .infinity, alignment: .center)
        }
        .padding(.bottom, 20)
        .background(Color("bgColor"))
    }
}

struct CardMatchView_Previews: PreviewProvider {
    static var previews: some View {
        CardMatchView(leagueName: "ProLigue", numDayInLeague: 27)
            .previewLayout(.sizeThatFits)
            .environment(\.locale, Locale(identifier: "fr"))
            .previewInterfaceOrientation(.landscapeRight)
    }
}
