//
//  ListItem.swift
//  WeldHandbook
//
//  Created by JWSScott777 on 10/4/23.
//

import SwiftUI
struct ListItem: View {
    var list: ListModel = lists[0]
    var body: some View {
        HStack(alignment: .top) {
            Image(systemName: list.image)
                .renderingMode(.original)
                .font(.title).bold()
                .frame(width: 36, height: 36)
                .background(Color.black)
                .mask(Circle())
            Text(list.title)
                .padding(5)
            Spacer()
            Image(list.image2)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 36, height: 36)
                .mask(Circle())
        }.padding(.vertical)
    }
}
#Preview {
    ListItem()
}
