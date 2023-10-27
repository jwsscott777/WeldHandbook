//
//  ListDetailView.swift
//  WeldHandbook
//
//  Created by JWSScott777 on 10/5/23.
//

import SwiftUI

struct ListDetailView: View {
    var list: ListModel = lists[3]
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ScrollView {
            VStack {
                ZStack(alignment: .topTrailing) {
                    Image(list.image2)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .clipShape(RoundedRectangle(cornerRadius: 25.0))
                    Button(action: {
                        dismiss()
                    }, label: {
                        Image(systemName: "xmark")
                            .tint(.red)
                    })
                    .font(.largeTitle)
                    .background(Color.white)
                    .mask(Circle())
                }
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
