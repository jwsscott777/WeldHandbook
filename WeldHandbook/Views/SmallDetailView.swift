//
//  SmallDetailView.swift
//  WeldHandbook
//
//  Created by JWSScott777 on 10/5/23.
//

import SwiftUI
struct SmallDetailView: View {
    var item: Item = items[0]
    @GestureState private var zoom = 1.0
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
    var body: some View {
        GeometryReader { geometry in
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
                    Text(item.descriptionqt)
                        .font(.title2)
                        .foregroundStyle(.orange)
                        .textSelection(.enabled)
                    Text(item.description)
                        .font(.title2)
                        .textSelection(.enabled)
                    Image(item.image2)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(RoundedRectangle(cornerRadius: 30))
                        .frame(height: dynamicImageHeight(geometry: geometry))
                        .frame(maxWidth: .infinity)
                        .scaleEffect(zoom)
                        .gesture(
                            MagnifyGesture()
                                .updating($zoom) { value, gestureState, transaction in
                                    gestureState = value.magnification
                                }
                        )
                    Text(item.description2)
                        .font(.title2)
                        .textSelection(.enabled)
                    Image(item.image3)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(RoundedRectangle(cornerRadius: 30))
                        .frame(height: dynamicImageHeight(geometry: geometry))
                        .frame(maxWidth: .infinity)
                        .scaleEffect(zoom)
                        .gesture(
                            MagnifyGesture()
                                .updating($zoom) { value, gestureState, transaction in
                                    gestureState = value.magnification
                                }
                        )
                    Text(item.description3)
                        .font(.title2)
                        .textSelection(.enabled)
                    Image(item.image4)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(RoundedRectangle(cornerRadius: 30))
                        .frame(height: dynamicImageHeight(geometry: geometry))
                        .frame(maxWidth: .infinity)
                        .scaleEffect(zoom)
                        .gesture(
                            MagnifyGesture()
                                .updating($zoom) { value, gestureState, transaction in
                                    gestureState = value.magnification
                                }
                        )
                    Text(item.description4)
                        .font(.title2)
                        .textSelection(.enabled)
                    Image(item.image5)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(RoundedRectangle(cornerRadius: 30))
                        .frame(height: dynamicImageHeight(geometry: geometry))
                        .frame(maxWidth: .infinity)
                        .scaleEffect(zoom)
                        .gesture(
                            MagnifyGesture()
                                .updating($zoom) { value, gestureState, transaction in
                                    gestureState = value.magnification
                                }
                        )
                }
                .padding()
            }
        }
    }
}
#Preview {
    SmallDetailView()
}
