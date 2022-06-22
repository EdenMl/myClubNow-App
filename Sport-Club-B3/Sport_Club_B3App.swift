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
    
    @Published var allSettings = [
        Settings(id: 1, code: "my-team-id", result: "1")
    ]
    
    @Published var allLeague = [
        League(id: 1, name: "ProLigue 21/22", numDays: 30, dateStart: Date(), dateEnd: Date())
    ]
    
    @Published var allTeam = [
        Team(id: 1, name: "JS Cherbourg", numDaysPlayed: 14, points: 22, placeTmp: 3, matchesWon: 8, matchesLost: 3, matchesDraw: 3, league: League(id: 1, name: "ProLigue 21/22", numDays: 30, dateStart: Date(), dateEnd: Date())),
        Team(id: 2, name: "Angers", numDaysPlayed: 14, points: 0, placeTmp: 0, matchesWon: 0, matchesLost: 0, matchesDraw: 0, league: League(id: 1, name: "ProLigue 21/22", numDays: 30, dateStart: Date(), dateEnd: Date())),
        Team(id: 3, name: "Caen", numDaysPlayed: 14, points: 0, placeTmp: 0, matchesWon: 0, matchesLost: 0, matchesDraw: 0, league: League(id: 1, name: "ProLigue 21/22", numDays: 30, dateStart: Date(), dateEnd: Date()))
    ]
    
    @Published var allMatch = [
        Match(id: 1, pointsHomeTeam: 29, pointsOutsideTeam: 27, dateStart: Date(), location: "Complexe Sportif Chantereyne", numDaysLeague: 14, highlighted: false, displayable: true, home: Team(id: 1, name: "JS Cherbourg", numDaysPlayed: 0, points: 0, placeTmp: 0, matchesWon: 0, matchesLost: 0, matchesDraw: 0, league: League(id: 1, name: "ProLigue 21/22", numDays: 30, dateStart: Date(), dateEnd: Date())), outside: Team(id: 3, name: "Caen", numDaysPlayed: 0, points: 0, placeTmp: 0, matchesWon: 0, matchesLost: 0, matchesDraw: 0, league: League(id: 1, name: "ProLigue 21/22", numDays: 30, dateStart: Date(), dateEnd: Date()))),
        
        Match(id: 2, pointsHomeTeam: 0, pointsOutsideTeam: 0, dateStart: Date(), location: "Angers", numDaysLeague: 15, highlighted: false, displayable: true, home: Team(id: 2, name: "Angers", numDaysPlayed: 0, points: 0, placeTmp: 0, matchesWon: 0, matchesLost: 0, matchesDraw: 0, league: League(id: 1, name: "ProLigue 21/22", numDays: 30, dateStart: Date(), dateEnd: Date())), outside: Team(id: 1, name: "JS Cherbourg", numDaysPlayed: 0, points: 0, placeTmp: 0, matchesWon: 0, matchesLost: 0, matchesDraw: 0, league: League(id: 1, name: "ProLigue 21/22", numDays: 30, dateStart: Date(), dateEnd: Date())))
    ]
    
    @Published var allNews = [
        News(id: 1, title: "Salut", content: "Salut !", acceptedRole: 30, active: true),
        News(id: 2, title: "Hello", content: "Hello World !", acceptedRole: 10, active: true),
        News(id: 3, title: "Hi", content: "Hi World !", acceptedRole: 20, active: true),
        News(id: 4, title: "RÉSULTATS DU WEEK-END", content: "Résultats du week-end 23/24 avril 2022. Peu de matchs joués ce week-end (vacances scolaires obligent) mais 2 premiers titres pour l'équipe.", acceptedRole: 10, active: true)
    ]
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
