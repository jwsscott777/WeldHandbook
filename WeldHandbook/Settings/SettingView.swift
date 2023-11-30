

import SwiftUI

struct SettingView: View {
   // @State private var path: NavigationPath = NavigationPath()
    var body: some View {
        NavigationStack() {
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
            .listStyle(.insetGrouped)
            .scrollIndicators(.hidden)
            .navigationTitle("Suggested Settings")
            .navigationDestination(for: Electrode.self) { item in
                ElectrodeView(electrode: item)
            }
            .navigationDestination(for: SolidWire.self) { item in
                SolidWireView(solidwire: item)
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

        SettingView()

}
