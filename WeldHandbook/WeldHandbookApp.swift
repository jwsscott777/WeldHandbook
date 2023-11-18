//
//  WeldHandbookApp.swift
//  WeldHandbook
//
//  Created by JWSScott777 on 10/3/23.
//

import SwiftUI
import TipKit
@main
struct WeldHandbookApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: [TaskModel.self, Position.self])
    }
    init() {
        try? Tips.configure()
    }
}
