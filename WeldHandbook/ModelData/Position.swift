//
//  Destination.swift
//  weldTour
//
//  Created by JWSScott777 on 10/15/23.
//

import Foundation
import SwiftData

@Model
class Position {
    var name: String
    var details: String
    var date: Date
    var priority: Int
    @Relationship(deleteRule: .cascade) var goals = [Goal]()

    init(name: String = "", details: String = "", date: Date = .now, priority: Int = 2) {
        self.name = name
        self.details = details
        self.date = date
        self.priority = priority
    }
}
