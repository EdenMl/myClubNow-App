//
//  League.swift
//  Sport-Club-B3
//
//  Created by Eden MALO on 22/06/2022.
//

import SwiftUI

struct League: Hashable, Codable {
    var id: Int
    var name: String

    var numDays: Int
    var dateStart: Date = Date()
    var dateEnd: Date = Date()

    var dateAdd: Date?
    var dateUpd: Date?
}
