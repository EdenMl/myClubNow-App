//
//  Team.swift
//  Sport-Club-B3
//
//  Created by Eden MALO on 22/06/2022.
//

import SwiftUI

struct Team: Hashable, Codable {
    var id: Int
    var name: String

    var numDaysPlayed: Int
    var points: Int
    var placeTmp: Int

    var matchesWon: Int
    var matchesLost: Int
    var matchesDraw: Int

    var dateAdd: Date?
    var dateUpd: Date?
    
    var league: League
}
