//
//  ProcessItemView.swift
//  Picker
//
//  Created by JWSScott777 on 11/25/23.
//

import SwiftUI

struct ProcessItemView: View {
    let item: ProcessItem
    var body: some View {
        LabeledContent {
            Text(item.diameter)
        } label: {
            Text("\(item.name)")
        }
        .foregroundStyle(.red)
    }
}

#Preview {
    ProcessItemView(item: electrodes[0])
}
