//
//  SmallCardView.swift
//  WeldHandbook
//
//  Created by JWSScott777 on 10/5/23.
//

import SwiftUI

struct SmallCardView: View {
    var item: Item = items[0]

    var body: some View {
        VStack(alignment: .leading, spacing: 8.0) {
            Image(item.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(30)
                .frame(height: 99)
                .frame(maxWidth: .infinity)
            Text(item.title)
                .font(.headline)
                .fontWeight(.bold)
            Text("Quick Tips")
                .opacity(0.7)
        }
        .foregroundStyle(.white)
        .padding(16)
        .frame(height: 222)
        .background(item.gradient)
        .cornerRadius(30.0)
    }
}

#Preview {
    SmallCardView()
}
