//
//  WeldBookApp.swift
//  WeldBook Watch App
//
//  Created by JWSScott777 on 12/8/23.
//

import SwiftUI
import SwiftData

@main
struct WeldBook_Watch_AppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: WatchNote.self)
        }
    }
}
