//
//  CardView.swift
//  WeldHandbook
//
//  Created by JWSScott777 on 10/4/23.
//

import SwiftUI
struct CardView: View {
    var course: Course = courses[3]
    var body: some View {
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
        .frame(width: 252, height: 329)
        .background(course.color)
        .clipShape(RoundedRectangle(cornerRadius: 30))
    }
}
#Preview {
    CardView()
}
