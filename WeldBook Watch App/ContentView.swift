//
//  ContentView.swift
//  WeldBook Watch App
//
//  Created by JWSScott777 on 12/8/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            TabView {

                    ForEach(weldcourses) { weldcourse in
                        NavigationLink(destination: WeldCardDetailView(weldcourse: weldcourse)) {
                            WeldCardView(weldcourse: weldcourse)
                        }
                    }
               
             
                    SetView()

            }
            .tabViewStyle(.verticalPage)
        }
    }
}

#Preview {
    ContentView()
}
