//
//  WeldCardView.swift
//  WeldBook Watch App
//
//  Created by JWSScott777 on 12/9/23.
//

import SwiftUI

struct WeldCardView: View {
    var weldcourse: WeldCourse = weldcourses[0]
    var body: some View {
        VStack {
            Text("Weld Handbook")
                .font(.caption)
            Image(weldcourse.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(30)
                .frame(height: 99)
                .frame(maxWidth: .infinity)
            Text(weldcourse.title)
                .font(.headline)
                .fontWeight(.bold)
            Text("Information")
                .font(.caption)
        }
        .foregroundStyle(.white)
        .frame(height: 222)
        .background(weldcourse.color)
        .clipShape(RoundedRectangle(cornerRadius: 30))
    }
}

#Preview {
    WeldCardView()
}

