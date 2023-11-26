//
//  CoreWireView.swift
//  Picker
//
//  Created by JWSScott777 on 11/25/23.
//

import SwiftUI

struct CoreWireView: View {
    let corewire: CoreWire
    var body: some View {
        List {
            Section("Wire Selection") {
                LabeledContent("Wire Type", value: corewire.name)
                LabeledContent("Mode of Transfer", value: corewire.title)
                LabeledContent("Wire Diameter", value: corewire.diameter)
                LabeledContent("Material Thickness", value: corewire.thickness)
            }
            Section("Voltage & Wirespeed") {
                LabeledContent("Suggested Setting:", value: corewire.setting)
            }
            Section("Wire Description") {
                VStack {
                    Text("\(corewire.description)")
                        .foregroundStyle(.orange)
                }
            }
        }
        .foregroundStyle(.red)
        .navigationTitle("FCAW Wire")
    }
}

#Preview {
    CoreWireView(corewire: corewires[0])
}
