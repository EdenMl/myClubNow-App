//
//  ProfilView.swift
//  Sport-Club-B3
//
//  Created by Eden MALO on 20/06/2022.
//

import SwiftUI

struct ProfilView: View {
    @StateObject var gD = GlobalData()
    @EnvironmentObject var vm: UserStateViewModel

    var body: some View {
        ZStack {
            Color("primaryColor")
                .ignoresSafeArea()
            
            ScrollView {
                VStack(alignment: .center, spacing: 0) {
                    ///- BARRE DU HAUT
                    SubheaderView(title: "Profil")
                    
                    VStack(alignment: .center, spacing: 0) {
                        Text("Hello ")
                            .foregroundColor(.white)
                        Button(action: {
                            Task {
                                vm.authLogOut()
                                print("CLIC LOGOUT")
                            }
                        }) {
                            Text("Se déconnecter")
                        }
                        .font(.system(size: 12))
                        .padding(.vertical, 10)
                        .padding(.horizontal, 25)
                        .textCase(.uppercase)
                        .scaledToFill()
                        .minimumScaleFactor(0.5)
                        .lineLimit(1)
                        .foregroundColor(.white)
                        .background(Color.black)
                        .cornerRadius(4)
                    }
                    .padding()
                    .padding(.bottom, gD.heightTabBar + 20.0)
                }
                
            }
            .navigationBarHidden(true)
        }
    }
}

struct ProfilView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilView()
    }
}
