//
//  DetailView.swift
//  WeldHandbook
//
//  Created by JWSScott777 on 10/4/23.
//

import SwiftUI

struct DetailView: View {
    var course: Course = courses[3]
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 8.0) {
                Image(course.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(30)
                    .frame(height: 128)
                    .frame(maxWidth: .infinity)
                Text(course.title)
                    .font(.title)
                    .fontWeight(.bold)

                Text(course.subtitle)
                    .lineLimit(2)
                    .opacity(0.7)
                Text("Information")
                    .opacity(0.7)
            }
            .foregroundStyle(.white)
            .padding(16)
            .background(course.color)
            VStack(alignment: .leading, spacing: 16) {
                Text(course.description)
                    .font(.headline)
            }
            .padding()

        }
    }
}

#Preview {
    DetailView()
}
