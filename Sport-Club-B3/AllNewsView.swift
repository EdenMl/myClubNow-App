//
//  AllNewsView.swift
//  Sport-Club-B3
//
//  Created by Eden MALO on 20/06/2022.
//

import SwiftUI

struct AllNewsView: View {
    
    @StateObject var gD = GlobalData()
    @EnvironmentObject var vm: UserStateViewModel

    var body: some View {
        ZStack {
            Color("primaryColor")
                .ignoresSafeArea()
            
            ScrollView {
                VStack(alignment: .center, spacing: 0) {
                    ///- BARRE DU HAUT
                    SubheaderView(title: "Actualités")
                    
                    
                    
                        if gD.allNews.count > 0 {
                            VStack(alignment: .center, spacing: 0) {
                                ForEach(0 ..< gD.allNews.count, id:\.self) { i in
                                    if (gD.allNews[i].acceptedRole <= vm.me.role) {
                                        CardNewsMinify(news: gD.allNews[i])
                                    }
                                }
                            }
                            .padding()
                            .background(.white)
                            .padding(.bottom, gD.heightTabBar + 20.0)
                        } else {
                            Text("Aucune actualité disponible")
                                .italic()
                                .frame(maxWidth: .infinity)
                                .padding()
                                .foregroundColor(.white)
                                .padding(.bottom, gD.heightTabBar + 20.0)
                        }
                }
                
            }
            .navigationBarHidden(true)
//            .onAppear {
//                Api().getAllNews{ (news) in
//                    gD.allNews.append(contentsOf: news)
//                }
//            }
        }
    }
}

struct AllNewsView_Previews: PreviewProvider {
    static var previews: some View {
        AllNewsView()
    }
}
