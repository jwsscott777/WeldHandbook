//
//  ContentView.swift
//  WeldBook Watch App
//
//  Created by JWSScott777 on 12/8/23.
//

import SwiftUI

struct ContentView: View {
    @State private var navigated = false
    var body: some View {
            TabView {
                MainView()
                    SetView()
                WeldTodoView()
            }
            .tabViewStyle(.verticalPage)
    }
}

#Preview {
    ContentView()
}
