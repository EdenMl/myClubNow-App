//
//  AllNewsView.swift
//  Sport-Club-B3
//
//  Created by Eden MALO on 20/06/2022.
//

import SwiftUI

struct AllNewsView: View {
    
    @StateObject var gD = GlobalData()
    @State var limitTmp = 10

    var body: some View {
        ZStack {
            Color("primaryColor")
                .ignoresSafeArea()
            
            ScrollView {
                VStack(alignment: .center, spacing: 0) {
                    ///- BARRE DU HAUT
                    SubheaderView(title: "Actualités")
                    
                    VStack(alignment: .center, spacing: 0) {
                        ForEach(0 ..< limitTmp, id:\.self) { i in
                            CardNewsMinify()
                        }
                    }
                    .padding()
                    .background(.white)
                    .padding(.bottom, gD.heightTabBar + 20.0)
                }
                
            }
    //        NavigationView {
    //            List {
    //                Section {
    //                    HStack {
    //                        Text("Hello")
    //                        Spacer()
    //                        Text("Hello World")
    //                    }
    //
    //                    HStack {
    //                        Text("Hello")
    //                        Spacer()
    //                        Text("Hello World")
    //                    }
    //
    //                    HStack {
    //                        Text("Hello")
    //                        Spacer()
    //                        Text("Hello World")
    //                    }
    //
    //                }
    //            }
    //        }
            
        }
    }
}

struct AllNewsView_Previews: PreviewProvider {
    static var previews: some View {
        AllNewsView()
    }
}