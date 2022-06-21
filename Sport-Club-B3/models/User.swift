//
//  User.swift
//  Sport-Club-B3
//
//  Created by Eden MALO on 21/06/2022.
//

import SwiftUI

struct User: Hashable, Codable {
    var id: Int?
    var email: String
    var password: String
    
    var firstname: String
    var lastname: String?
    var role: Int
    
    var birthday: Date?
    var dateAdd: Date?
    var dateUpd: Date?
    
    
    func displayRole() -> String {
        switch self.role {
            case 10: return "visiteur"
            case 20: return "supporter"
            case 30: return "membre du club"
            default: return "inconnu"
        }
    }
}
