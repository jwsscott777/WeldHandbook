//
//  DetailView.swift
//  WeldHandbook
//
//  Created by JWSScott777 on 10/4/23.
//

import SwiftUI


struct DetailView: View {
    var course: Course = courses[3]
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
                    Image(course.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(RoundedRectangle(cornerRadius: 30))
                        .frame(height: 128)
                        .frame(maxWidth: .infinity)
                    Text(course.title)
                        .font(.title)
                        .fontWeight(.bold)

                    Text(course.subtitle)
                        .lineLimit(2)
                        .opacity(0.7)
                    Text("Information")
                        .opacity(0.7)
                }
                .foregroundStyle(.white)
                .padding(16)
                .background(course.color)
                VStack(alignment: .leading, spacing: 16) {
                    Text(course.description)
                        .font(.title2)
                        .textSelection(.enabled)
                    Image(course.image2)
                        .resizable()
                        .aspectRatio(contentMode:  .fit)
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
                    Text(course.description2)
                        .font(.title2)
                        .textSelection(.enabled)
                    Image(course.image3)
                        .resizable()
                        .aspectRatio(contentMode:  .fit)
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
                    Text(course.description3)
                        .font(.title2)
                        .textSelection(.enabled)
                    Image(course.image4)
                        .resizable()
                        .aspectRatio(contentMode:  .fit)
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
                    Text(course.description4)
                        .font(.title2)
                        .textSelection(.enabled)
                    Image(course.image5)
                        .resizable()
                        .aspectRatio(contentMode:  .fit)
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
                } //:Vstack
                .padding()
            }
        }
    }
}

#Preview {
    DetailView()
}
