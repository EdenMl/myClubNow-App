//
//  InformationMatchView.swift
//  Sport-Club-B3
//
//  Created by Eden MALO on 07/06/2022.
//

import SwiftUI

struct InformationMatchView: View {
    var pointsDom: Int?
    var pointsExt: Int?
    // var score = String(pointsDom ?? 0) + " - " + String(pointsExt ?? 0)

    let gameDate: Date
    let dateFormatter: DateFormatter
        
    init() {
        gameDate = Date()
        dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .short
    }

    var body: some View {
        VStack {
            VStack {
                Text(gameDate, format: Date.FormatStyle().month().day().weekday())
                    .bold()
                
                Text(gameDate, format: Date.FormatStyle().hour().minute())
                    .bold()
            }
            .textCase(.uppercase)
            .foregroundColor(Color("primaryColor"))
            .padding(.bottom, 8)
            
            Text("Complexe Sportif - Chantereyne")
                .padding(.bottom, 12)
                .font(.footnote)
                .frame(alignment: .center)
                .multilineTextAlignment(.center)
            
            Text("32 - 29")
                .font(.title)
                .bold()
                .foregroundColor(Color("primaryColor"))
            
            Button("Billetterie") {}
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
        .padding(.vertical, 10)
    }
}

struct InformationMatchView_Previews: PreviewProvider {
    static var previews: some View {
        InformationMatchView()
            .previewLayout(.sizeThatFits)
    }
}
