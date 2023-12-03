//
//  AlumaWireView.swift
//  WeldHandbook
//
//  Created by JWSScott777 on 12/1/23.
//

import SwiftUI

struct AlumaWireView: View {
    let alumawire: AlumaWire
    var body: some View {
        List {
            Section("Wire Selection") {
                LabeledContent("Wire Type", value: alumawire.name)
                LabeledContent("Mode of Transfer", value: alumawire.title)
                LabeledContent("Wire Diameter", value: alumawire.diameter)
                LabeledContent("Material Thickness", value: alumawire.thickness)
            }
            Section("Voltage & Wirespeed") {
                LabeledContent("Suggested Setting:", value: alumawire.setting)
            }
            Section("Wire Description") {
                VStack {
                    Text(NSLocalizedString(alumawire.description, comment: ""))
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
    AlumaWireView(alumawire: alumawires[0])
}
