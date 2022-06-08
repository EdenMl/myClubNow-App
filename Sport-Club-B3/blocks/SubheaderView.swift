//
//  HeaderView.swift
//  Sport-Club-B3
//
//  Created by Eden MALO on 18/05/2022.
//

import SwiftUI

struct SubheaderView: View {
    let title: String
    let goToHome: Bool

    var body: some View {
        ZStack {
            HStack {
                Text(title.uppercased())
                    .font(.system(size: 14))
                    .foregroundColor(.white)
                    .fontWeight(.heavy)
                    .bold()
                    .padding()

                Spacer()
                
                if goToHome {
                    Image(systemName: "house.fill")
                        .font(.system(size: 28, weight: .light))
                        .foregroundColor(.white)
                }
            }
            .padding(.horizontal, 25)
        }
        .background(Color("primaryColor"))
    }
}

struct SubheaderView_Previews: PreviewProvider {
    static var previews: some View {
        SubheaderView(title: "Home", goToHome: true)
            .previewLayout(.sizeThatFits)
    }
}
