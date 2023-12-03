//
//  SolidWireView.swift
//  Picker
//
//  Created by JWSScott777 on 11/25/23.
//

import SwiftUI

struct SolidWireView: View {
    let solidwire: SolidWire
    var body: some View {
        List {
            Section("Wire Selection") {
                LabeledContent("Wire Type", value: solidwire.name)
                LabeledContent("Mode of Transfer", value: solidwire.title)
                LabeledContent("Wire Diameter", value: solidwire.diameter)
                LabeledContent("Material Thickness", value: solidwire.thickness)
            }
            Section("Voltage & Wirespeed") {
                LabeledContent("Suggested Setting:", value: solidwire.setting)
            }
            Section("Wire Description") {
                VStack {
                    Text(NSLocalizedString(solidwire.description, comment: ""))
                        .foregroundStyle(.orange)
                }
            }
        }
        .foregroundStyle(.red)
        .navigationTitle("GMAW")
        .scrollIndicators(.hidden)
    }
}

#Preview {
    SolidWireView(solidwire: solidwires[0])
}
