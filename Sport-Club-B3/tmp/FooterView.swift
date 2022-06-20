//
//  FooterView.swift
//  Sport-Club-B3
//
//  Created by Eden MALO on 18/05/2022.
//

import SwiftUI

struct FooterView: View {

    @StateObject var gD = GlobalData()

    var body: some View {
        ZStack {
            
            HStack {
                Text("🟣 PARCE QUE ICI C’EST CHERBOURG !".uppercased())
                    .font(.system(size: 14))
                    .foregroundColor(.white)
                    .fontWeight(.heavy)
                    .bold()
                    .padding()

                Spacer()
                
//                Link(destination: URL(string: "https://instagram.com/js_cherbourg")!) {
//                    Image("icon-instagram")
//                        .font(.largeTitle)
//                }
            }
            .padding(.horizontal, 25)
            .padding(.bottom, gD.heightTabBar + 15.0)

        }
        .background(Color("primaryColor"))
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
            .previewLayout(.fixed(width: 375, height: 80))
    }
}
