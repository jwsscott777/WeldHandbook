//
//  WeldCourse.swift
//  WeldBook Watch App
//
//  Created by JWSScott777 on 12/9/23.
//

import SwiftUI

struct WeldCourse: Identifiable {
    var id = UUID()
    var title: String
    var description: LocalizedStringResource
    var image: String
    var color: Color
}

var weldcourses = [
    WeldCourse(title: "SMAW", description: """
    1. Electrodes commonly used:

    * E6010 - Designed for welding pipe and general structures. Excellent for all-position and vertical down
    welding. Slag is light and easy to remove. Deep, penetrating arc. Low deposition rates.
    Polarity DC + (electrode positive).

    * E6011 - Similar to E6010 but modified to allow use of AC. Excellent for welding sheet metal corner
    joints vertical down. Polarity AC or DC + (electrode positive).

    * E7018 - An iron-powder, low-hydrogen, all-position electrode. Excellent for rigid, highly stressed structures of low- to medium-carbon steel. Can also be used for welding mild and high-strength steels, highcarbon
             steels, and alloy steels. Polarity AC or DC + reverse polarity.

    * E7024 - An iron-powder electrode with low hydrogen, usable in all positions. Excellent for high-amperage, large, fillet welds in flat and horizontal positions. Polarity AC or DC − (electrode negative).

    2. Amperage Ranges:

    * E6010 - 75–130 / 1/8" (90 amps) preferred.
    * E6011 - 75–130 / 1/8" (90 amps) preferred.
    * E7018 - 90 / 3/32"
    * E7018 - 110–160 / 1/8" (140 amps) preferred for Flat & Horizontal.
    (110-115 amps) preferred for Vertical & Overhead.
    * E7024 - 130–180 / 1/8"

    3. Polarity:
    * DCEP = DCRP == Electrode Positive or Reverse Polarity.
    * DCEN = DCSP == Electrode Negative or Straight Polarity.
""", image: "Weld1", color: Color(#colorLiteral(red: 0, green: 0.7283110023, blue: 1, alpha: 1))),
    WeldCourse(title: "GMAW", description: """
    1. GMAW Welding of Sheet Steel:

    * Short-Circuit Transfer Mode:
    * Used for welding carbon steel, low-alloy steel, and stainless steel sheets from 24 gage to 11 gage.
    * Optimal electrode: 0.035-inch diameter.
    * Current: 50 to 200 amps.
    * Voltage: 14 to 22 volts, with 16 to 18 volts being optimum for most applications.

    2. Shielding Gases for GMAW Welding:

    * Carbon and Low-Alloy Steels:

    * For short-circuit welding of thinner metals, argon with 15–25% CO2 is recommended.
    * For very thin metals (less than 18 gage), argon mixed with 2 to 5% oxygen can be used.

    * Stainless Steels:

    * For thin-gage stainless steel, an argon mixture with 2 to 4% CO2 is practical.
    * For thicker stainless steels, argon 98% + oxygen 2% is traditionally used.

    3. GMAW Spray Transfer:

    * With a 0.035-inch diameter electrode using argon 75% + CO2 25%, small globular weld droplet formation occurs in the conventional spray transfer range.
    * Wire Speed: Over 420 ipm.
    * Voltage: 24-32 volts.
""", image: "Weld7", color: Color(#colorLiteral(red: 0.9467853904, green: 0.2021691203, blue: 0.3819385171, alpha: 1))),
    WeldCourse(title: "FCAW", description: """
    1. Electrode Selection and Settings for Various Steel Thicknesses:

    * For vertical up welds on steel thicknesses from 1/8 to 3/16 inches and pipe thickness range of 1/4 to 1/2 inches, use a .035-inch diameter E71T-1 electrode.

    * For steel in the range of 1/4 to 3/8 inches thickness, consider a 0.045-inch diameter E71T-1 electrode, or a .062-inch diameter E71T-1 electrode in nonheat-sensitive applications.

    * For steel over 3/8 inches thickness, a .062-inch diameter E71T-1 electrode is recommended.

    * For flat and horizontal welds on steel of 3/8 to 3/4 inches thickness, use a 1/16-inch diameter E70T-X electrode, and for steel over 3/4 inches thickness, a 3/32-inch E70T-X electrode.

    2. Settings for Dual-Shielded, All-Position FCAW Electrodes:

    * For vertical up welding with E71T-1 electrodes (0.045-inch diameter), the recommended current range is approximately 130 to 250 amps.

    * Optimal settings for a vertical up weld with an E71T-1, .035-inch diameter electrode are a wire feed rate of 450 in./min, a welding current of 160 to 170 amps, and a voltage of 27 to 28 volts.

    3. Additional Guidlines:

    * A .035-inch electrode is ideal for welding steel pipe with wall thicknesses less than 1/2 inch.

    * The recommended contact tip recess for FCAW is about 1/2 inch with a minimum electrode extension of 3/4 inch.

    * For .045-inch diameter E71T-1 all-position electrodes, use a wire feed rate of 350 in./min for vertical up welding (200 to 190 amps, 24 to 25 volts) and 560 in./min for flat welding (270 amps, 25 to 27 volts).

    0.052-inch (1.3-mm) Diameter Electrodes:

    * Vertical Up Welding:
    * Wire Feed Rate: Set to approximately 250 in./min (106 mm/s).
    * Amperage: Around 200 amps.
    * Voltage: Set to 25 volts.

    Flat Welding:
    * Wire Feed Rate: Set  490 to 560 in./min (207 to 237 mm/s).
    * Amperage: Approximately 300 amps.
    * Voltage: Set to 28 volts.

    0.062-inch (1.6-mm) Diameter Electrodes:
    * Vertical Up Welding:
    * Wire Feed Rate: 190 in./min.
    * Amperage: 230 to 240 amps.
    * Voltage: Adjust to 24–25 volts.

    * Flat Welding:
    * Wire Feed Rate: 300 in./min.
    * Amperage: 340–350 amps.
    * Voltage: Set to 29–30 volts.

    Average Deposition Rates for Manual Welding:
    * Welding for 30 minutes of each hour on steel thicknesses of 1/4 to 3/8 inches with an all-position flux-cored electrode of .062-inch or 0.045-inch diameter typically results in a deposition rate of about 4–5 lb/h.
""", image: "Weld5", color: Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1))),
    WeldCourse(title: "GTAW", description: """
    Tungsten Selection Guide:

    1. Pure Tungsten (EWP):
    * Good for low-amperage welding of aluminum and magnesium using AC; forms a molten ball shape at the tip during AC welding.

    2. Thoriated Electrodes (EWTh):
    * Offer higher current capacity and superior arc stability compared to pure tungsten, especially for DC welding. Not suitable for maintaining a rounded ball shape at the tip.

    3. Zirconiated Electrodes (EWZr):
    * Less sensitive to contamination and superior in current capacity than pure tungsten, used in critical applications.

    Electrode Selection Based on Base Metal:

    * For carbon, low-alloy, stainless, and nickel steels: Thoriated electrodes with DCEN; use EWZr for thin materials.
    * For aluminum: Zirconium or pure tungsten with AC; thoriated zirconium with DCEP for thin sections.
    * For copper and copper alloys: Thoriated electrodes with DCEN; use EWZr or EWP with AC for thin sections.
    * For magnesium: Zirconium with AC; use DCEP with the same electrode for thin sections.
    * For titanium: Thoriated electrodes with DCEN.
""", image: "Weld17", color: Color(#colorLiteral(red: 0.3150139749, green: 0, blue: 0.8982304931, alpha: 1)))
]
