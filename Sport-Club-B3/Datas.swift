//
//  Datas.swift
//  Sport-Club-B3
//
//  Created by Eden MALO on 22/06/2022.
//

import SwiftUI

/*
    Le principe est le suivant mais n'ayant pas réussi à faire fonctionné la liasion avec l'API.
    Je me suis concentré sur le développement de l'application mobile avec les models et la possibilité d'avoir des données dynamiques.
 
     Ensuite, l'idée est de charger les données au lancement de l'application dans le meme style que
     .onAppear {
         Api().getAllNews{ (news) in
             gD.allNews.append(news)
         }
     }
 */

class Api {
    func getAllSetting(completion: @escaping ([Setting]) -> ()) {
        guard let url = URL(string: "http://staging.edenml.fr/league") else { return }
        
        URLSession.shared.dataTask(with: url) { data, _, _ in
            let setting = try! JSONDecoder().decode([Setting].self, from: data!)
           
            // print(news)
            
            DispatchQueue.main.async {
                completion(setting)
            }
        }
        .resume()
    }
    
    func getAllNews(completion: @escaping ([News]) -> ()) {
        guard let url = URL(string: "http://staging.edenml.fr/news") else { return }
        
        URLSession.shared.dataTask(with: url) { data, _, _ in
            let news = try! JSONDecoder().decode([News].self, from: data!)
           
            // print(news)
            
            DispatchQueue.main.async {
                completion(news)
            }
        }
        .resume()
    }
    
    func getAllLeagues(completion: @escaping ([League]) -> ()) {
        guard let url = URL(string: "http://staging.edenml.fr/league") else { return }
        
        URLSession.shared.dataTask(with: url) { data, _, _ in
            let league = try! JSONDecoder().decode([League].self, from: data!)
           
            // print(news)
            
            DispatchQueue.main.async {
                completion(league)
            }
        }
        .resume()
    }
    
    func getAllTeam(completion: @escaping ([Team]) -> ()) {
        guard let url = URL(string: "http://staging.edenml.fr/league") else { return }
        
        URLSession.shared.dataTask(with: url) { data, _, _ in
            let team = try! JSONDecoder().decode([Team].self, from: data!)
           
            // print(news)
            
            DispatchQueue.main.async {
                completion(team)
            }
        }
        .resume()
    }
    
    func getAllMatch(completion: @escaping ([Match]) -> ()) {
        guard let url = URL(string: "http://staging.edenml.fr/league") else { return }
        
        URLSession.shared.dataTask(with: url) { data, _, _ in
            let match = try! JSONDecoder().decode([Match].self, from: data!)
           
            // print(news)
            
            DispatchQueue.main.async {
                completion(match)
            }
        }
        .resume()
    }
}

