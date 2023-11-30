//
//  Goal.swift
//  weldTour
//
//  Created by JWSScott777 on 10/15/23.
//

import Foundation
import SwiftData
@Model
class Goal {
    var name: String
    var position: Position?
    init(name: String) {
        self.name = name
    }
}
