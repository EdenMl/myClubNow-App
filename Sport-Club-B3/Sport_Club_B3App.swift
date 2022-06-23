//
//  Sport_Club_B3App.swift
//  Sport-Club-B3
//
//  Created by Eden MALO on 17/05/2022.
//
//  CE FICHIER EST UN SWITCH

import SwiftUI

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
    @StateObject var gD = GlobalData()

    var body: some View {
        if (vm.isLoggedIn) {
            MainView()
        } else {
            LoginView()
        }
    }
}

func loadAllNews() {
    @StateObject var gD = GlobalData()
    
//    gD.allNews.append(News(id: 1, title: "Hello", content: "Hello World !", acceptedRole: 10, active: true))
//    gD.allNews.append(News(id: 2, : "Hi", content: "Hi World !", acceptedRole: 10, active: true))
}
