//
//  Extensions.swift
//  DesignCode
//
//  Created by Meng To on 9/7/23.
//

import SwiftUI
extension View {
    @ViewBuilder func `if`<Content: View>(_ condition: Bool, transform: (Self) -> Content) -> some View {
        if condition {
            transform(self)
        } else {
            self
        }
    }
}
