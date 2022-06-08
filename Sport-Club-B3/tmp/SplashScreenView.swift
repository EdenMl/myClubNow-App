//
//  SplashScreenView.swift
//  Sport-Club-B3
//
//  Created by Eden MALO on 17/05/2022.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
//    @State private var color: Color = .primaryColor
    
    var body: some View {
        if isActive {
            LoginView()
        } else {
            ZStack {
                Color("primaryColor")
                    .ignoresSafeArea()
                    .preferredColorScheme(.light)

                VStack {
                    VStack {
                        Image("logo-white")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 100)
                    }
                    .scaleEffect(size)
                    .opacity(opacity)
                    .onAppear {
                        withAnimation(.easeIn(duration: 1.2)) {
                            self.size = 0.9
                            self.opacity = 1.0
                        }
                    }
                }
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                        withAnimation {
                            self.isActive = true
                        }
                    }
                }
            }
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
