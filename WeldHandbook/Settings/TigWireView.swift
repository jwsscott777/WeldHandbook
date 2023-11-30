//
//  TigWireView.swift
//  Picker
//
//  Created by JWSScott777 on 11/25/23.
//

import SwiftUI

struct TigWireView: View {
    let tigwire: TigWire
    var body: some View {
        List {
            Section("Electrode Selection") {
                LabeledContent("Tungsten:", value: tigwire.name)
                LabeledContent("Used for:", value: tigwire.title)
                LabeledContent("Electrode Diameter:", value: tigwire.diameter)
                LabeledContent("Material Thickness:", value: tigwire.thickness)
            }
            Section("Amperage Range") {
                LabeledContent("Suggested Setting:", value: tigwire.setting)
            }
            Section("Filler Description") {
                VStack {
                    Text("\(tigwire.description)")
                        .foregroundStyle(.orange)
                }
            }
        }
        .foregroundStyle(.red)
        .navigationTitle("Tungsten")
        .scrollIndicators(.hidden)
    }
}

#Preview {
    TigWireView(tigwire: tigwires[0])
}
