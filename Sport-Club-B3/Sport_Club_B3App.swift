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
    
    @Published var allSetting = [
        Setting(id: 1, code: "my-team-id", result: "1")
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
        Match(id: 1, pointsHomeTeam: 29, pointsOutsideTeam: 27, dateStart: Date(), location: "Complexe Chantereyne", numDaysLeague: 14, highlighted: false, displayable: true, home: Team(id: 1, name: "JS Cherbourg", numDaysPlayed: 0, points: 0, placeTmp: 0, matchesWon: 0, matchesLost: 0, matchesDraw: 0, league: League(id: 1, name: "ProLigue 21/22", numDays: 30, dateStart: Date(), dateEnd: Date())), outside: Team(id: 3, name: "Caen", numDaysPlayed: 0, points: 0, placeTmp: 0, matchesWon: 0, matchesLost: 0, matchesDraw: 0, league: League(id: 1, name: "ProLigue 21/22", numDays: 30, dateStart: Date(), dateEnd: Date()))),
        
        Match(id: 2, pointsHomeTeam: 0, pointsOutsideTeam: 0, dateStart: Date(), location: "Angers", numDaysLeague: 15, highlighted: false, displayable: true, home: Team(id: 2, name: "Angers", numDaysPlayed: 0, points: 0, placeTmp: 0, matchesWon: 0, matchesLost: 0, matchesDraw: 0, league: League(id: 1, name: "ProLigue 21/22", numDays: 30, dateStart: Date(), dateEnd: Date())), outside: Team(id: 1, name: "JS Cherbourg", numDaysPlayed: 0, points: 0, placeTmp: 0, matchesWon: 0, matchesLost: 0, matchesDraw: 0, league: League(id: 1, name: "ProLigue 21/22", numDays: 30, dateStart: Date(), dateEnd: Date())))
    ]
    
    @Published var allNews = [
        News(
            id: 4,
            title: "RÉSULTATS DU WEEK-END",
            content: "L'équipe réserve montre les crocs !\n\nLes jeunes Mauves accueillaient le Stade Valériquais Handball pour leur avant-dernière journée de championnat. La victoire était essentielle pour se maintenir, et les coéquipiers de Paul Boilay ont parfaitement réussi cet objectif. Menant le match de bout en bout, la JS Cherbourg 2 s'impose 31-29 et revient à hauteur du dernier non-relegable, Segré, qui s'est incliné face à Caen dans le même temps.",
            // pictureUrl: URL(string: "http://www.jscherbourg.fr/sites/default/files/reserve.jpg"),
            pictureUrl: URL(string: "https://images.unsplash.com/photo-1587384474964-3a06ce1ce699?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80"),
            pictureAlt: "",
            acceptedRole: 10,
            active: true
        ),
        
        News(
            id: 5,
            title: "COMMUNIQUÉ OFFICIEL DE LA JS CHERBOURG",
            content: "Après une saison historique, la JS Cherbourg et son entraineur principal Frédéric BOUGEANT ont décidé d’un commun accord de mettre un terme à leur collaboration.\n\nLe club comme l'entraineur se séparent avec le souhait pour chacun d'une réussite partagée dans leurs futurs projets.\n\nFrederic BOUGEANT souhaite remercier le club pour ces deux années.",
            // pictureUrl: URL(string: "http://www.jscherbourg.fr/sites/default/files/communique_officiel_0.jpg"),
            pictureUrl: URL(string: "https://images.unsplash.com/photo-1553627220-92f0446b6a5f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80"),
            pictureAlt: "",
            acceptedRole: 10,
            active: true
        ),
        
        News(
            id: 6,
            title: "INFOS : ABONNEMENTS 2022-2023",
            content: "Règlement du solde de votre abonnement.\n\n\nPour valider votre inscription, vous pouvez désormais régler le solde de votre abonnement, soit en ligne sur le site internet (http://store.jscherbourg.fr), soit lors des permanences au secrétariat du club :\nLundi 13 juin de 14h à 18h \nMercredi 15 juin de 14h à 18h \nJeudi 16 juin de 10h à 12h \n\n\nEn 2022, les Mauves ont joué 7 fois à guichets fermés sur 7 matchs possible. Prolongez votre aventure Mauve en vous abonnant pour ne louper aucun match !",
            // pictureUrl: URL(string: "http://www.jscherbourg.fr/sites/default/files/visuel_abonnements_2022_0.jpg"),
            pictureUrl: URL(string: "https://images.unsplash.com/photo-1556155092-490a1ba16284?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80"),
            pictureAlt: "",
            acceptedRole: 20,
            active: true
        ),
        
        News(
            id: 7,
            title: "MERCI MAXIMILIEN !",
            content: "Pour des raisons personnelles, Maximilien TIKE quittera la JS Cherbourg Manche HB à l’issue de la saison 2021/2022. \n\nIl y a quelques semaines, notre Capitaine a émis le souhait de partir vers d'autres horizons. Arrivé en juillet 2021 en provenance de Limoges, notre capitaine aura contribué à la réussite du club en inscrivant 142 buts lors de cette saison (en 32 matchs). \n\nMaximilien Tike posera ses valises en Grèce, à l'AEK Athènes. Il goûtera à la Coupe d'Europe pour la première fois de sa carrière. \n\n\nIl souhaitait vous adresser un message avant son départ : 'J'ai été fier de porter le maillot de la JSC. L'aventure fût courte mais très enrichissante. Je tiens à remercier tous les supporters, les bénévoles du club mais aussi mes coéquipiers et le staff. Le Mauve sera toujours dans mon coeur, à bientôt !' \n\n\nL’ENSEMBLE DE LA JS CHERBOURG MANCHE HB EST FIER DE L'AVOIR EU DANS SON EFFECTIF ET ESPÈRE LE VOIR BRILLER DANS CE NOUVEAU PROJET.",
            // pictureUrl: URL(string: "http://www.jscherbourg.fr/sites/default/files/tike-nb.jpg"),
            pictureUrl: URL(string: "https://images.unsplash.com/photo-1513028738826-f000cded30a4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1744&q=80"),
            pictureAlt: "",
            acceptedRole: 30,
            active: true
        ),
        
        News(
            id: 8,
            title: "LE BEFIN4LFORE REVIENT !",
            content: "Vous vous en souvenez ? Il est de retour ! Le BEFIN4LFORE revient vendredi et samedi avant le match contre Pontault-Combault, diffusé sur Facebook. Vendredi 3 juin à 18h / Samedi 4 juin à 14h Des invités surprises vous attendront, on vous prépare un beau programme.",
            // pictureUrl: URL(string: "http://www.jscherbourg.fr/sites/default/files/dsc06911.jpg"),
            pictureUrl: URL(string: "https://images.unsplash.com/photo-1608638562455-bc8927d3abd9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1550&q=80"),
            pictureAlt: "",
            acceptedRole: 10,
            active: true
        ),
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
