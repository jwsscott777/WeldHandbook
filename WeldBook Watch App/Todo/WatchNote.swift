//
//  WatchNote.swift
//  WeldBook Watch App
//
//  Created by JWSScott777 on 12/14/23.
//

import SwiftUI
import SwiftData

@Model
final class WatchNote {
    var title: String
    var isLiked: Bool
    var date: Date

    init(title: String, isLiked: Bool, date: Date) {
        self.title = title
        self.isLiked = isLiked
        self.date = date
    }

}
