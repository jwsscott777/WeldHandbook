//
//  MainView.swift
//  WeldBook Watch App
//
//  Created by JWSScott777 on 12/17/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationStack {
            TabView {
                ForEach(weldcourses) { weldcourse in
                    NavigationLink(destination: WeldCardDetailView(weldcourse: weldcourse)) {
                        WeldCardView(weldcourse: weldcourse)
                    }
                }
            }
            .tabViewStyle(.automatic)
        }
    }
}

#Preview {
    MainView()
}
