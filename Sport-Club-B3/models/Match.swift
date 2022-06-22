//
//  Match.swift
//  Sport-Club-B3
//
//  Created by Eden MALO on 22/06/2022.
//

import SwiftUI

struct Match: Hashable, Codable {
    var id: Int
    var pointsHomeTeam: Int
    var pointsOutsideTeam: Int
    
    var dateStart: Date = Date()
    var location: String
    var otherInformation: String?
    var numDaysLeague: Int
    
    var highlighted: Bool
    var displayable: Bool
    var dateAdd: Date?
    var dateUpd: Date?
    
    var home: Team
    var outside: Team
}
