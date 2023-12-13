//
//  WeldCardDetailView.swift
//  WeldBook Watch App
//
//  Created by JWSScott777 on 12/9/23.
//

import SwiftUI

struct WeldCardDetailView: View {
    var weldcourse: WeldCourse = weldcourses[0]
    var body: some View {
            ScrollView {
                VStack {
                    Image(weldcourse.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(RoundedRectangle(cornerRadius: 30))
                        .frame(height: 110)
                        .frame(maxWidth: .infinity)
                    Text(weldcourse.title)
                        .font(.callout)
                        .fontWeight(.bold)
                }
                .foregroundStyle(.white)
                .padding(16)
                .background(weldcourse.color)
                VStack(alignment: .leading) {
                    Text(weldcourse.description)
                        .font(.headline)
                        .foregroundStyle(.orange)
                }
            }

    }
}

#Preview {
    WeldCardDetailView()
}
