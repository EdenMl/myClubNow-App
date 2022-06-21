//
//  Sport_Club_B3App.swift
//  Sport-Club-B3
//
//  Created by Eden MALO on 17/05/2022.
//
//  CE FICHIER EST UN SWITCH

import SwiftUI

class GlobalData: ObservableObject {
    @Published var heightTabBar = 50.0
//    @Published var isLoggedIn = false
}

@main
struct Sport_Club_B3App: App {
    @StateObject var userStateViewModel = UserStateViewModel()
        
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ApplicationSwitcher()
            }
            .navigationViewStyle(.stack)
            .environmentObject(userStateViewModel)
        }
    }
}

struct ApplicationSwitcher: View {
    
    @EnvironmentObject var vm: UserStateViewModel
    
    var body: some View {
        if (vm.isLoggedIn) {
            MainView()
        } else {
            LoginView()
        }
    }
}
