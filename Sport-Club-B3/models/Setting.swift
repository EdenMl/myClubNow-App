//
//  Settings.swift
//  Sport-Club-B3
//
//  Created by Eden MALO on 22/06/2022.
//

import SwiftUI

struct Settings: Hashable, Codable {
    var id: Int
    var code: String
    var result: String
    var dateStart: Date = Date()
    var dateEnd: Date = Date()
}
