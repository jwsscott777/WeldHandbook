//
//  ContentView.swift
//  WeldHandbook
//
//  Created by JWSScott777 on 10/3/23.
//

import SwiftUI
import TipKit
struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            Casa()
                .tabItem {
                    Image(systemName: "tray.2.fill")
                    Text("Tasks")
                }
            GoalView()
                .tabItem {
                    Image(systemName: "folder.fill.badge.person.crop")
                    Text("Practice")
                }
            SettingView()
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                }
            ListView()
                .tabItem {
                    Image(systemName: "text.book.closed.fill")
                    Text("Reference")
                }
        }
    }
}
#Preview {
    ContentView()
        .preferredColorScheme(.dark)
}



