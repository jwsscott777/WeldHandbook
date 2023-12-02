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

struct Electrode: Identifiable, Hashable,  ProcessItem {
    var id = UUID().uuidString
    var name: String
    var title: String
    var diameter: String
    var thickness: String
    var setting: String
    var description: String
}

let electrodes: [Electrode] = [
    Electrode(name: "E6010", title: "DCRP", diameter: "1/8(3.2mm)", thickness: "3/16-1/2", setting: "75-130 amps", description: "The last two digits '10' refers to a celulous based flux bonded with sodium silicate and designed for all positions. It is a deep penetration electrode."),
    Electrode(name: "E6011", title: "DCRP/AC", diameter: "1/8(3.2mm)", thickness: "3/16-1/2", setting: "75-130 amps", description: "A celulous based flux similar to E6010 but bonded with potassium silicate. Designed primarally for Alternating Current machines"),
    Electrode(name: "E6012", title: "DCEN/AC", diameter: "1/8(3.2mm)", thickness: "3/16-1/2", setting: "85-140 amps", description: "Bonded with sodium silicate this high-rutile medium penetration electrode, can fill gaps and misaligned fitups. Works great with flat, vertical or vertical down welding. Welds faster than E6010-11, all positions, best in straight polarity."),
    Electrode(name: "E6013", title: "DCEN", diameter: "1/8(3.2mm)", thickness: "3/16-1/2", setting: "75-135 amps", description: "Bonded with sodium silicate, this rod is similar to E6012 except it is designed for shallow penetration. It works with all positions, best in straight polarity."),
    Electrode(name: "E6027", title: "DCRP/AC", diameter: "1/8(3.2mm)", thickness: "3/16-1/2", setting: "120-180 amps", description: "High iron-oxide coating bonded with sodium silicate and a high percentage of iron powder. High X-ray quality can be achieved in the flat and horizontal positions."),
    Electrode(name: "E7014", title: "DCRP/AC/DCEN", diameter: "1/8(3.2mm)", thickness: "3/16-1/2", setting: "110-155 amps", description: "A shallow penetration electrode similar to E6013 with added iron powder. Excellent for vertical down applications with poor fit-up."),
    Electrode(name: "E7018", title: "DCRP", diameter: "1/8(3.2mm)", thickness: "3/16-1/2", setting: "110-140 amps", description: "A standard among low hydrogen electrodes. The flux contains 25% iron powder used for all position welding."),
    Electrode(name: "E7018", title: "DCRP", diameter: "3/32(2.5mm)", thickness: "1/8-1/4", setting: "90 amps", description: "A standard among low hydrogen electrodes. The flux contains 25% iron powder used for all position welding.A great choice for out of position work. It handles better than the 1/8 diameter version. It is often used for the stringer bead caps of 6G pipe."),
    Electrode(name: "E7024", title: "DCEN", diameter: "1/8(3.2mm)", thickness: "3/16-1/2", setting: "130-180 amps", description: "Heavy coating containing 50% iron powder for fast deposition rates. Flat and Horizontal welds only. Straight polarity works best.")
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
    SolidWire(name: "ER70s-3 or 6", title: "Short circuit", diameter: ".030(0.8mm)", thickness: "25 to 21 gage", setting: "15V 200 Ipm", description: "Short circuit has a current range of 50 to 200 amps which translates to wire speeds between 70 - 420Ipm and voltage between 14 - 24V. Shielding gas should be Argon + 25% Co2. The ER70s-6 has more silicon than the ER70s-3 which is a preferred choice if the work is slightly contaminated. ER70s-3 is a better choice if welding is to be done on galvanized steels because of its lower silicon content. Both wires also have manganese as deoxidizers."),
    SolidWire(name: "ER70s-3 or 6", title: "Short circuit", diameter: ".035(1.0mm)", thickness: "20 gage to 1/4in", setting: "17V 210 Ipm", description: "Short circuit has a current range of 50 to 200 amps which translates to wire speeds between 70 - 420Ipm and voltage between 14 - 24V. Shielding gas should be Argon + 25% Co2. The ER70s-6 has more silicon than the ER70s-3 which is a preferred choice if the work is slightly contaminated. ER70s-3 is a better choice if welding is to be done on galvanized steels because of its lower silicon content. Both wires also have manganese as deoxidizers."),
    SolidWire(name: "ER70s-3 or 6", title: "Short circuit", diameter: ".045(1.2mm)", thickness: "20 gage to 1/4in", setting: "18V 210 Ipm", description: "Short circuit has a current range of 50 to 200 amps which translates to wire speeds between 70 - 420Ipm and voltage between 14 - 24V. Shielding gas should be Argon + 25% Co2. The ER70s-6 has more silicon than the ER70s-3 which is a preferred choice if the work is slightly contaminated. ER70s-3 is a better choice if welding is to be done on galvanized steels because of its lower silicon content. Both wires also have manganese as deoxidizers."),
    SolidWire(name: "ER70s-3 or 6", title: "Spray", diameter: ".035(1.0mm)", thickness: "20 gage to 1/4in", setting: "30V 560 Ipm", description: "Spray is dependant on having a high voltage setting to start with so as not get too much spatter. Adjustments should be made to accomodate the thickness of the metal in addition to a shielding gas of Argon +13 - 20% CO2. Limited to Flat and horizontal positions. The ER70s-6 has more silicon than the ER70s-3 which is a preferred choice if the work is slightly contaminated. ER70s-3 is a better choice if welding is to be done on galvanized steels because of its lower silicon content. Both wires also have manganese as deoxidizers."),
    SolidWire(name: "ER70s-3 or 6", title: "Spray", diameter: ".045(1.2mm)", thickness: "3/16 to 7/16in", setting: "31V 490 Ipm", description: "Spray is dependant on having a high voltage setting to start with so as not get too much spatter. Adjustments should be made to accomodate the thickness of the metal in addition to a shielding gas of Argon +13 - 20% CO2. Limited to Flat and horizontal positions. The ER70s-6 has more silicon than the ER70s-3 which is a preferred choice if the work is slightly contaminated. ER70s-3 is a better choice if welding is to be done on galvanized steels because of its lower silicon content. Both wires also have manganese as deoxidizers."),
    SolidWire(name: "ER70s-3 or 6", title: "Spray", diameter: ".062(1.6mm)", thickness: "1/2in and up", setting: "31V 300 Ipm", description: "Spray is dependant on having a high voltage setting to start with so as not get too much spatter. Adjustments should be made to accomodate the thickness of the metal in addition to a shielding gas of Argon +15% CO2. Limited to Flat and horizontal positions. The ER70s-6 has more silicon than the ER70s-3 which is a preferred choice if the work is slightly contaminated. ER70s-3 is a better choice if welding is to be done on galvanized steels because of its lower silicon content. Both wires also have manganese as deoxidizers.")
]

struct AlumaWire: Identifiable, Hashable, ProcessItem {
    var id = UUID().uuidString
    var name: String
    var title: String
    var diameter: String
    var thickness: String
    var setting: String
    var description: String
}

let alumawires: [AlumaWire] = [
    AlumaWire(name: "ER4043", title: "Spray", diameter: ".035(1.0mm)", thickness: "1/16-1/8", setting: "21-22V 350-400 Ipm", description: "This wire is the most common for all-purpose work. It has silicon as its primary alloy. It is a soft wire and prone to burn backing in the contact tip. Important to not let the wire speed get to low as it will cause you a lot of problems. Shielding gas is 100% Argon."),
    AlumaWire(name: "ER4043", title: "Spray", diameter: ".035(1.0mm)", thickness: "3/16-1/4", setting: "24-25V 420-450 Ipm", description: "This wire is the most common for all-purpose work. It has silicon as its primary alloy. It is a soft wire and prone to burn backing in the contact tip. Important to not let the wire speed get to low as it will cause you a lot of problems. Shielding gas is 100% Argon."),
    AlumaWire(name: "ER5356", title: "Spray", diameter: ".035(1.0mm)", thickness: "1/16-1/8", setting: "24-25V 400-450 Ipm", description: "This wire is stiffer and not as prone to feeding problems as ER4043. The stiffness plus the high magnesium content demands higher voltages and wire speeds than what was used for ER4043. Shielding gas is 100% Argon."),
    AlumaWire(name: "ER5356", title: "Spray", diameter: ".035(1.0mm)", thickness: "3/16-1/4", setting: "27-30V 450-580 Ipm", description: "This wire is stiffer and not as prone to feeding problems as ER4043. The stiffness plus the high magnesium content demands higher voltages and wire speeds than what was used for ER4043. Shielding gas is 100% Argon."),
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
    CoreWire(name: "E70T-X", title: "Flat & Horizontal Position", diameter: ".045(1.2mm)", thickness: "1/4 - 1/2in >", setting: "26V 560 Ipm", description: "This wire is not used as often but it still offers great performance and minimum weave manipulation."),
    CoreWire(name: "E70T-X", title: "Flat & Horizontal Position", diameter: ".062(1.6mm)", thickness: "3/8 - 3/4in >", setting: "29V 350 Ipm", description: "This wire offers the most practical current range and deposition rate A single pass 3/4in stringer bead can be achieved with no effort."),
    CoreWire(name: "E71T-1", title: "Vertical Up", diameter: ".035", thickness: "1/8 - 3/8in", setting: "28V 450 Ipm", description: "This wire is often used when thinner steels are used and greater fusion is required for out of position welding."),
    CoreWire(name: "E71T-1", title: "Vertical Up", diameter: ".045", thickness: "1/4 - 1/2in", setting: "25V 350 Ipm", description: "This wire provides unique potential for cost savings. It is simpler to operate, provides greater weld quality and provides three times the rate of weld deposition."),
    CoreWire(name: "E71T-1", title: "Vertical Up", diameter: ".052", thickness: "1/4 - 3/4in", setting: "24V 250 Ipm", description: "This wire provides unique potential for cost savings. It is simpler to operate, provides greater weld quality and provides three times the rate of weld deposition."),
    CoreWire(name: "E71T-1", title: "Vertical Up", diameter: ".062", thickness: "3/8 ->", setting: "25V 210 Ipm", description: "This wire provides unique potential for cost savings. It is simpler to operate, provides greater weld quality and provides three times the rate of weld deposition.")
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
    TigWire(name: "EWP (Green)", title: "Aluminum & Magnesium", diameter: "1/16", thickness: "16 gage", setting: "40 - 80 amps", description: "Pure Tungsten recommended for X-ray quality welds with no radioactive inclusions. They are typically cheaper, have a lower current-carrying capacity, and lower resistance to weld contamination. Used with AC."),
    TigWire(name: "EWP (Green)", title: "Aluminum & Magnesium", diameter: "3/32", thickness: "11 gage", setting: "70 - 125 amps", description: "Pure Tungsten recommended for X-ray quality welds with no radioactive inclusions. They are typically cheaper, have a lower current-carrying capacity, and lower resistance to weld contamination. Used with AC."),
    TigWire(name: "EWP (Green)", title: "Aluminum & Magnesium", diameter: "1/8", thickness: "3/16 - 1/4", setting: "110 - 170 amps", description: "Pure Tungsten recommended for X-ray quality welds with no radioactive inclusions. They are typically cheaper, have a lower current-carrying capacity, and lower resistance to weld contamination. Used with AC."),
    TigWire(name: "EWTh-2 (Red)", title: "Steels and Copper", diameter: "1/16", thickness: "1/16", setting: "60 - 100 amps", description: "These electrodes are alloyed with thorium @2% to produce a higher melting temperature and 50% more current capacity. Thoria is a radioactive material, and all safety measures must be followed precisely, especially when grinding thoriated tungsten electrodes. The red electrode is the most commonly used tungsten option thanks to its longevity and ease of use. Used with DCEN."),
    TigWire(name: "EWTh-2 (Red)", title: "Steels and Copper", diameter: "3/32", thickness: "1/8", setting: "150 - 170 amps", description: "These electrodes are alloyed with thorium @2% to produce a higher melting temperature and 50% more current capacity. Thoria is a radioactive material, and all safety measures must be followed precisely, especially when grinding thoriated tungsten electrodes. The red electrode is the most commonly used tungsten option thanks to its longevity and ease of use. Used with DCEN."),
    TigWire(name: "EWTh-2 (Red)", title: "Steels and Copper", diameter: "1/8", thickness: "3/16 - 1/4", setting: "180 - 220 amps", description: "These electrodes are alloyed with thorium @2% to produce a higher melting temperature and 50% more current capacity. Thoria is a radioactive material, and all safety measures must be followed precisely, especially when grinding thoriated tungsten electrodes. The red electrode is the most commonly used tungsten option thanks to its longevity and ease of use. Used with DCEN."),
    TigWire(name: "EWZr (Brown)", title: "Aluminum & Magnesium", diameter: "1/16", thickness: "16 gage", setting: "60 - 120 amps", description: "Zirconiated Tungsten are practical for critical applications and superior current capacity than pure tungsten. This electrode is very resistant to spatter and handles high amperages with ease. Used with AC."),
    TigWire(name: "EWZr (Brown)", title: "Aluminum & Magnesium", diameter: "3/32", thickness: "11 gage", setting: "100 - 180 amps", description: "Zirconiated Tungsten are practical for critical applications and superior current capacity than pure tungsten. This electrode is very resistant to spatter and handles high amperages with ease. Used with AC."),
    TigWire(name: "EWZr (Brown)", title: "Aluminum & Magnesium", diameter: "1/8", thickness: "3/16 - 1/4", setting: "160 - 250 amps", description: "Zirconiated Tungsten are practical for critical applications and superior current capacity than pure tungsten. This electrode is very resistant to spatter and handles high amperages with ease. Used with AC."),
    TigWire(name: "EWCe-2 (Gray)", title: "Steels & Aluminum", diameter: "1/16", thickness: "16 gage", setting: "10 - 70 amps", description: "As opposed to thoriated electrodes, ceriated electrodes are not radioactive and can be used equally well with AC and DC. They are characterized by low erosion rate, and a long service life. They can be used with non-corroding steels, aluminum, magnesium, titanium, nickel, and copper alloys."),
    TigWire(name: "EWCe-2 (Gray)", title: "Steels & Aluminum", diameter: "3/32", thickness: "11 gage", setting: "15 - 150 amps", description: "As opposed to thoriated electrodes, ceriated electrodes are not radioactive and can be used equally well with AC and DC. They are characterized by low erosion rate, and a long service life. They can be used with non-corroding steels, aluminum, magnesium, titanium, nickel, and copper alloys."),
    TigWire(name: "EWCe-2 (Gray)", title: "Steels & Aluminum", diameter: "1/8", thickness: "3/16 - 1/4", setting: "25 - 250 amps", description: "As opposed to thoriated electrodes, ceriated electrodes are not radioactive and can be used equally well with AC and DC. They are characterized by low erosion rate, and a long service life. They can be used with non-corroding steels, aluminum, magnesium, titanium, nickel, and copper alloys."),

]
