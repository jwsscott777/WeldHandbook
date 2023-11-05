//
//  ListDetailView.swift
//  WeldHandbook
//
//  Created by JWSScott777 on 10/5/23.
//

import SwiftUI

struct ListDetailView: View {
    var list: ListModel = lists[3]

    // Function to dynamically calculate the image frame height based on screen size
        func dynamicImageHeight(geometry: GeometryProxy) -> CGFloat {
            let isLandscape = geometry.size.width > geometry.size.height
            let isRegularWidth = geometry.size.width > 600 // A common breakpoint for regular width

            if isLandscape && isRegularWidth {
                return geometry.size.width / 2 // or some fraction of the width
            } else {
                return geometry.size.width / 1.5 // or whatever aspect ratio you want
            }
        }
    @Environment(\.dismiss) var dismiss
    var body: some View {
        GeometryReader { geometry in
            ScrollView(showsIndicators: false) {
                VStack {
                    ZStack(alignment: .topTrailing) {
                        Image(list.image2)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .clipShape(RoundedRectangle(cornerRadius: 25.0))
                            .frame(height: dynamicImageHeight(geometry: geometry))
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
}

#Preview {
    ListDetailView()
}
