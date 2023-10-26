//
//  HomeView.swift
//  WeldHandbook
//
//  Created by JWSScott777 on 10/4/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
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
                .navigationTitle("Welding Handbook")

                Text("More Info")
                    .font(.subheadline).bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 16)], spacing: 16) {
                    ForEach(items) { item in
                        NavigationLink(destination: SmallDetailView(item: item)) {
                            SmallCardView(item: item)
                        }
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    HomeView()
}
