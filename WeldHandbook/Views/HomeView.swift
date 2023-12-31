//
//  HomeView.swift
//  WeldHandbook
//
//  Created by JWSScott777 on 10/4/23.
//

import SwiftUI
import TipKit
struct HomeView: View {
    @State private var navigated = false
    let welcomeTip = WelcomeTip()
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 16) {
                        ForEach(courses) { course in
                            NavigationLink(destination: DetailView(course: course)) {
                                CardView(course: course)
                            }
                        }
                    }
                    .padding()
                }
                .navigationTitle("Weld Handbook")
                    Text("More Info ⬇️")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    .popoverTip(welcomeTip)
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 16)], spacing: 16) {
                    ForEach(items) { item in
                        NavigationLink(destination: SmallDetailView(item: item)) {
                            SmallCardView(item: item)
                        }
                    }
                }
                .padding()
                    Button(action: {
                        navigated = true
                    }, label: {
                        Text("App Disclaimer")
                    })
                    .foregroundStyle(.accent)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    .buttonStyle(.plain)
                .navigationDestination(isPresented: $navigated) {
                    AppInfoView()
                }
            }
        }
    }
}
#Preview {
    HomeView()
}
