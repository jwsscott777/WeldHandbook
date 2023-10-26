//
//  SmallDetailView.swift
//  WeldHandbook
//
//  Created by JWSScott777 on 10/5/23.
//

import SwiftUI

struct SmallDetailView: View {
    var item: Item = items[0]
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 8.0) {
                Image(item.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(30)
                    .frame(height: 128)
                    .frame(maxWidth: .infinity)
                Text(item.title)
                    .font(.title)
                    .fontWeight(.bold)
            }
            .foregroundStyle(.white)
            .padding(16)
            .background(item.gradient)
            VStack(alignment: .leading, spacing: 16) {
                Text(item.description)
                    .font(.headline)
            }
            .padding()

        }
    }
}

#Preview {
    SmallDetailView()
}
