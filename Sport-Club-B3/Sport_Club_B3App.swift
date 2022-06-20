//
//  Sport_Club_B3App.swift
//  Sport-Club-B3
//
//  Created by Eden MALO on 17/05/2022.
//

import SwiftUI

@main
struct Sport_Club_B3App: App {
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}

class GlobalData: ObservableObject {
    @Published var heightTabBar = 50.0
}
