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
                    // SubheaderView(title: "Profil")
                    
                    VStack {
                        Text("Bonjour \(vm.me.firstname.uppercased()) !")
                            .font(.title)
                            .fontWeight(.heavy)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .padding(.bottom)
                        
                        VStack {
                            Section() {
                                HStack {
                                    Text("Identité")
                                        .fontWeight(.medium)
                                        .foregroundColor(.black)
                                    Spacer()
                                    Text("\(vm.me.firstname.capitalized) \(vm.me.lastname?.uppercased() ?? "")")
                                        .foregroundColor(.black)
                                }
                            }
                            .padding()
                            .background(Color("bgColor"))
                            
                            Section() {
                                HStack {
                                    Text("Rôle")
                                        .fontWeight(.medium)
                                        .foregroundColor(.black)
                                    Spacer()
                                    Text(vm.me.displayRole().capitalized)
                                        .foregroundColor(.black)
                                }
                            }
                            .padding()
                            .background(Color("bgColor"))
                            
                            Section() {
                                HStack {
                                    Text("Anniversaire")
                                        .fontWeight(.medium)
                                        .foregroundColor(.black)
                                    Spacer()
                                    if vm.me.birthday != nil {
                                        Text(vm.me.birthday!, style: .date)
                                            .foregroundColor(.black)
                                    } else {
                                        Text("NaN")
                                            .foregroundColor(.black)
                                    }
                                }
                            }
                            .padding()
                            .background(Color("bgColor"))
                            
                            Section() {
                                HStack {
                                    Text("Création du compte")
                                        .fontWeight(.medium)
                                        .foregroundColor(.black)
                                    Spacer()
                                    if vm.me.dateAdd != nil {
                                        Text(vm.me.dateAdd!, style: .date)
                                            .foregroundColor(.black)
                                    } else {
                                        Text("NaN")
                                            .foregroundColor(.black)
                                    }
                                }
                            }
                            .padding()
                            .background(Color("bgColor"))
                            
                            Section {
                                Button(action: {
                                    Task {
                                        vm.authLogOut()
                                    }
                                }) {
                                    Text("Se déconnecter")
                                }
                                .frame(maxWidth: .infinity)
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
                            .padding(.vertical)
                        }
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
