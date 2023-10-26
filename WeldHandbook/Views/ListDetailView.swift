//
//  ListDetailView.swift
//  WeldHandbook
//
//  Created by JWSScott777 on 10/5/23.
//

import SwiftUI

struct ListDetailView: View {
    var list: ListModel = lists[0]
    var body: some View {
        ScrollView {
            VStack {
                Image(list.image2)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(RoundedRectangle(cornerRadius: 25.0))
                Text(list.title)
                    .font(.largeTitle)
                    .foregroundStyle(.red)
                    .padding(.bottom)
                Text(list.description)
                    .font(.headline)
            }
            .padding()
        }

    }
}

#Preview {
    ListDetailView()
}
