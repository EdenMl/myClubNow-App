//
//  News.swift
//  Sport-Club-B3
//
//  Created by Eden MALO on 08/06/2022.
//

import SwiftUI

struct News: Hashable, Codable {
    var id: Int
    var title: String
    var content: String
    
    var pictureUrl: URL?
    var pictureAlt: String?
    var acceptedRole: Int
    
    var active: Bool
    var dateAdd: Date?
    var dateUpd: Date?
    
    func displayAcceptedRole() -> String {
        switch self.acceptedRole {
            case 10: return "visiteur"
            case 20: return "fans"
            case 30: return "club"
            default: return ""
        }
    }
}
