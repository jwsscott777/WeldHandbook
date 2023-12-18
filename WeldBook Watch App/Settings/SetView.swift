//
//  SetView.swift
//  WeldBook Watch App
//
//  Created by JWSScott777 on 12/9/23.
//

import SwiftUI

struct SetView: View {
    var body: some View {
        NavigationStack {
            List {
                Section("SMAW") {
                    ForEach(electrodes) { electrode in
                        NavigationLink(value: electrode) {
                            ProcessItemView(item: electrode)
                        }
                    }
                }
                Section("GMAW") {
                    ForEach(solidwires) { wire in
                        NavigationLink(value: wire) {
                            ProcessItemView(item: wire)
                        }
                    }
                }
                Section("GMAW Aluminum") {
                    ForEach(alumawires) { awire in
                        NavigationLink(value: awire) {
                            ProcessItemView(item: awire)
                        }
                    }
                }
                Section("FCAW") {
                    ForEach(corewires) { core in
                        NavigationLink(value: core) {
                            ProcessItemView(item: core)
                        }
                    }
                }
                Section("GTAW") {
                    ForEach(tigwires) { tig in
                        NavigationLink(value: tig) {
                            ProcessItemView(item: tig)
                        }
                    }
                }
            }
            .navigationTitle("Volts & Amps")
            .navigationDestination(for: Electrode.self) { item in
                ElectrodeView(electrode: item)
            }
            .navigationDestination(for: SolidWire.self) { item in
                SolidWireView(solidwire: item)
            }
            .navigationDestination(for: AlumaWire.self) { item in
                AlumaWireView(alumawire: item)
            }
            .navigationDestination(for: CoreWire.self) { item in
                CoreWireView(corewire: item)
            }
            .navigationDestination(for: TigWire.self) { item in
                TigWireView(tigwire: item)
            }
        }
    }
}

#Preview {
    SetView()
}
