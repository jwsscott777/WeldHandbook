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
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading, spacing: 8.0) {
                Image(item.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 30))
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
                    .font(.title2)
                Image(item.image2)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 30))
                    .frame(height: 200)
                    .frame(maxWidth: .infinity)
                Text(item.description2)
                    .font(.title2)
                Image(item.image3)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 30))
                    .frame(height: 200)
                    .frame(maxWidth: .infinity)
                Text(item.description3)
                    .font(.title2)
                Image(item.image4)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 30))
                    .frame(height: 200)
                    .frame(maxWidth: .infinity)
                Text(item.description4)
                    .font(.title2)
                Image(item.image5)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 30))
                    .frame(height: 200)
                    .frame(maxWidth: .infinity)
            }
            .padding()

        }
    }
}

#Preview {
    SmallDetailView()
}
