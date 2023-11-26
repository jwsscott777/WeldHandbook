//
//  Electrode.swift
//  Picker
//
//  Created by JWSScott777 on 11/25/23.
//

import Foundation

protocol ProcessItem {
    var name: String { get }
    var title: String { get }
    var diameter: String { get }
    var thickness: String { get }
    var setting: String { get }
    var description: String { get }
}

struct Electrode: Identifiable, Hashable, ProcessItem {
    var id = UUID().uuidString
    var name: String
    var title: String
    var diameter: String
    var thickness: String
    var setting: String
    var description: String
}

let electrodes: [Electrode] = [
    Electrode(name: "E6010", title: "DCRP", diameter: "1/8", thickness: "3/16-1/2", setting: "90 amps", description: "A celulous based flux designed for all positions"),
    Electrode(name: "E6011", title: "DCRP/AC", diameter: "1/8", thickness: "3/16-1/2", setting: "90 amps", description: "A celulous based flux similar to E6010. Designed primarally for Alternating Current machines"),
    Electrode(name: "E7018", title: "DCRP", diameter: "1/8", thickness: "3/16-1/2", setting: "110-140 amps", description: "A standard among electrodes. The flux contains 25% iron powder used for all position welding."),
    Electrode(name: "E7018", title: "DCRP", diameter: "3/32", thickness: "1/8-1/4", setting: "90 amps", description: "A great choice for out of position work. It handles better than the 1/8 diameter version. It is often used for the stringer bead caps of 6G pipe.")
]

struct SolidWire: Identifiable, Hashable, ProcessItem {
    var id = UUID().uuidString
    var name: String
    var title: String
    var diameter: String
    var thickness: String
    var setting: String
    var description: String
}

let solidwires: [SolidWire] = [
    SolidWire(name: "ER70s-3", title: "Short circuit", diameter: ".023", thickness: "18 gauge", setting: "17V 200Ipm", description: "A great choice for sheet metal applications."),
    SolidWire(name: "Er70s-3", title: "Short circuit", diameter: ".030", thickness: "18-11 gauge", setting: "17V 300Ipm", description: "A great choice for sheet metal applications of larger thickness."),
    SolidWire(name: "ER70s-3", title: "Short circuit", diameter: ".035", thickness: "3/16 - 1/4", setting: "17-24V 200-420Ipm", description: "A great choice for most applications. Widely available.")
]

struct CoreWire: Identifiable, Hashable, ProcessItem {
    var id = UUID().uuidString
    var name: String
    var title: String
    var diameter: String
    var thickness: String
    var setting: String
    var description: String
}

let corewires: [CoreWire] = [
    CoreWire(name: "E71T-1", title: "Short circuit", diameter: ".035", thickness: "11 gauge", setting: "17V 230Ipm", description: "A great choice for smaller thickness metals."),
    CoreWire(name: "E71T-1", title: "Short circuit", diameter: ".045", thickness: "1/4 - 1/2", setting: "24V 370Ipm", description: "A great choice for most applications."),
    CoreWire(name: "E71T-1", title: "Spray", diameter: ".035", thickness: "11 gauge", setting: "24V 430Ipm", description: "A great choice for sheet metal applications."),
    CoreWire(name: "E71T-1", title: "Spray", diameter: ".045", thickness: "1/4 - 1/2", setting: "32V 560Ipm", description: "A great choice for thicker metals.")
]

struct TigWire: Identifiable, Hashable, ProcessItem {
    var id = UUID().uuidString
    var name: String
    var title: String
    var diameter: String
    var thickness: String
    var setting: String
    var description: String
}

let tigwires: [TigWire] = [
    TigWire(name: "ER70s-3", title: "Steel", diameter: "1/16", thickness: "16 gauge", setting: "80 - 100 amps", description: "A great choice for very thin steel."),
    TigWire(name: "ER70s-3", title: "Steel", diameter: "3/32", thickness: "1/8 - 3/16", setting: "100 - 130 amps", description: "A great choice for most applications."),
    TigWire(name: "ER70s-3", title: "Steel", diameter: "1/8", thickness: "3/16 >", setting: "130 - 160 amps", description: "A great choice for thicker metals and more deposition is required.")
]
