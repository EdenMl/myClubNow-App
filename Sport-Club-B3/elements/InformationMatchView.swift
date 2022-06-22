//
//  InformationMatchView.swift
//  Sport-Club-B3
//
//  Created by Eden MALO on 07/06/2022.
//

import SwiftUI

struct InformationMatchView: View {
    var match: Match

    @Environment(\.openURL) var openURL

    let dateFormatter: DateFormatter = DateFormatter()
    
//    let winner: Int
//    if match.pointsHomeTeam == match.pointsOutsideTeam {
//        winner = 15
//    } else if match.pointsHomeTeam > match.pointsOutsideTeam {
//        winner = 10
//    } else if match.pointsHomeTeam < match.pointsOutsideTeam {
//        winner = 20
//    }
        
//    init() {
//        gameDate = Date()
//        dateFormatter = DateFormatter()
//        dateFormatter.dateStyle = .long
//        dateFormatter.timeStyle = .short
//    }

    var body: some View {

        VStack {
            VStack {
                Text(match.dateStart, format: Date.FormatStyle().month().day().weekday())
                    .bold()
                
                Text(match.dateStart, format: Date.FormatStyle().hour().minute())
                    .bold()
            }
            .textCase(.uppercase)
            .foregroundColor(Color("primaryColor"))
            .padding(.bottom, 8)
            
            Text(match.location)
                .padding(.bottom, 12)
                .font(.footnote)
                .frame(alignment: .center)
                .multilineTextAlignment(.center)
                .lineLimit(3)
            
            if match.pointsHomeTeam != 0 && match.pointsOutsideTeam != 0 {
                Text("\(String(match.pointsHomeTeam)) - \(String(match.pointsOutsideTeam))")
                    .font(.title)
                    .bold()
                    .foregroundColor(Color("primaryColor"))
            } else {
                Button("Billetterie") {
                    openURL(URL(string: "https://store.jscherbourg.fr/catalogs/D6826854-AC16-4B61-A399-DA6A2ED6C740")!)
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
            }
        }
        .padding(.vertical, 10)
    }
}

//struct InformationMatchView_Previews: PreviewProvider {
//    static var previews: some View {
//        InformationMatchView()
//            .previewLayout(.sizeThatFits)
//    }
//}
