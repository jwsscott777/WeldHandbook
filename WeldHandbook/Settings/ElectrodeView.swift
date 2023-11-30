//
//  ElectrodeView.swift
//  Picker
//
//  Created by JWSScott777 on 11/25/23.
//

import SwiftUI

struct ElectrodeView: View {
    let electrode: Electrode
    var body: some View {
        List {
            Section("Electrode Selection") {
                LabeledContent("Electrode", value: electrode.name)
                LabeledContent("Polarity", value: electrode.title)
                LabeledContent("Electrode Diameter", value: electrode.diameter)
                LabeledContent("Material Thickness", value: electrode.thickness)
            }
            Section("Amperage Range") {
                LabeledContent("Suggested Setting:", value: electrode.setting)
            }
            Section("Electrode Description") {
                VStack {
                    Text("\(electrode.description)")
                        .foregroundStyle(.orange)
                }
            }
        }
        .foregroundStyle(.red)
        .navigationTitle("SMAW")
        .scrollIndicators(.hidden)
    }
}

#Preview {
    ElectrodeView(electrode: electrodes[0])
}
