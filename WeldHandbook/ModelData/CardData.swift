//


import SwiftUI
struct Item: Identifiable {
    var id = UUID()
    var title: LocalizedStringResource
    var text: LocalizedStringResource
    var image2: String
    var image3: String
    var image4: String
    var image5: String
    var descriptionqt: LocalizedStringResource
    var description: LocalizedStringResource
    var description2: LocalizedStringResource
    var description3: LocalizedStringResource
    var description4: LocalizedStringResource
    var image: String
    var gradient: LinearGradient
}
var items = [
    Item(title: "SMAW", text: "Quick Tips", image2: "welder", image3: "StickFace", image4: "StickSlag", image5: "Vertical",
         descriptionqt: """
         Quick Settings:

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

         """,
         description: """
Setting Up and Using a SMAW (Shielded Metal Arc Welding) Machine: Quick Checklist

1. Safety First:
    * Wear appropriate personal protective equipment (PPE): welding helmet, safety glasses, flame-resistant clothing, welding gloves, and leather boots.
    * Ensure a well-ventilated area or use an exhaust system to remove welding fumes.
    * Check the area for any flammable materials and ensure they're safely away from the welding zone.
""", description2: """
    2. Inspect Equipment:
        * Check the welding machine for any visible damage.
        * Ensure the power cable, electrode holder, work clamp, and welding leads are in good condition (no exposed wires or damage).

    3. Setup Workspace:
        * Secure the workpiece using clamps or fixtures.
        * Clean the workpiece surface using a wire brush or grinder to remove rust, paint, or any contaminants.
        * Attach the work clamp as close to the welding area as possible.

    4. Power Up:
        * Connect the machine to an appropriate power source.
        * Turn on the welding machine.
    """, description3: """
    5. Select the Right Electrode:
        * Choose the appropriate electrode based on the material you're welding and the welding position.
        * The third digit of the electrode designation determines the position it is capable of welding in. For example: E6010 and E7018 both have the number '1' as their third digit so this indicates that these two electrodes can be used in 'All'(1F, 1G, 2F, 2G, 3F, 3G, 4F, 4G etc..) positions. An electrode such as E7024 has a '2' as it's third digit so it is limited to being used on 'Flat and Horizontal' welds (1F, 2F etc...) only.
        * Insert the electrode into the electrode holder.

    6. Set Current & Polarity:
        * Adjust the machine's current setting (amperage) as recommended for the electrode size and type.
        * Set the correct polarity (either Direct Current Electrode Positive (DCEP) or Direct Current Electrode Negative (DCEN)) based on electrode specifications. For example: DCEP means that the elctrode cable is connected to the positive terminal and DCEN means that the electrode is connected to the negative terminal. Don't forget it.
        * For example: E6010 1/8" diameter should be run at 90 amps at DCRP or DCEP.
        * For example: E7018 1/8" diameter should be run at 110 - 140 amps at DCRP or DCEP.
        * For example: E7024 1/8" diameter should be run at 140 - 160 amps at DCEN or DCSP.

    """, description4: """
    7. Strike the Arc:
        * Use a striking motion similar to striking a match to initiate the arc.
        * For E6010, a whipping motion can be used.
        * For E7018, a drag motion is preferred.
        * Maintain a short arc length, roughly equal to the diameter of the electrode.

    8. Weld:
        * Move the electrode along the workpiece at a steady rate, ensuring consistent bead formation.
        * Keep an eye on the molten weld pool, ensuring proper fusion with the base metal.

    9. Chip and Brush:
        * After completing a weld bead, chip off the slag using a chipping hammer.
        * Brush the weld using a wire brush to reveal and inspect the weld bead.

    Extra Tips:
        * You can either drag the rod in a straight line - 'Stringer bead" - or you can use a side to side motion - 'Weave bead' - to deposit your weld metal. However, its good to know what positions are better suited for which method you intend to use. For example: 'Stringer beads' can be used on 'All" positions, whereas 'Weave beads" cannot be used effectively on horizontal positions - 2F, 2G and 6G respectfully.
    """, image: "SmallStick", gradient: LinearGradient(
            gradient: Gradient(stops: [
        .init(color: Color(#colorLiteral(red: 0.29981932044029236, green: 0.13958334922790527, blue: 0.8374999761581421, alpha: 1)), location: 0),
        .init(color: Color(#colorLiteral(red: 0.7541666626930237, green: 0.2042534351348877, blue: 0.583319902420044, alpha: 1)), location: 1)]),
            startPoint: UnitPoint(x: 0.5002249700310126, y: 3.0834283490377423e-7),
            endPoint: UnitPoint(x: -0.0016390833199537713, y: 0.977085239704672))),
    Item(title: "GMAW", text: "Quick Tips", image2: "Mig4", image3: "DriveRolls", image4: "GMAWChart", image5: "FluxGun",
         descriptionqt: """
         Quick Settings:

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
         """,
         description: """
Setting Up and Using a GMAW (Gas Metal Arc Welding) Machine:

1. Safety First:
    * Wear suitable personal protective equipment (PPE): auto-darkening welding helmet, safety glasses, flame-resistant clothing, welding gloves, and leather boots.
    * Ensure adequate ventilation or employ a fume extraction system.
    * Keep flammable materials away from the welding area.
""", description2: """
    2. Inspect the Machine and Components:
        * Check for any visible damage to the machine.
        * Inspect the power cable, torch, work clamp, and welding leads for wear or damage.

    3. Setting Up the Workspace:
        * Secure the workpiece with clamps or fixtures.
        * Clean the welding surface using a wire brush or grinder to remove contaminants.
        * Attach the work clamp close to the welding area.
        * Tip: Grounding closer to the work reduces energy losses.

    4. Power and Gas Setup:
        * Connect the welding machine to the correct power source.
        * Connect the gas cylinder and ensure that the regulator and gas hose are properly attached.
        * Tip: Use the right shielding gas mix for the material. For instance, use 75% Argon / 25% CO2 for mild steel.
        * Use 100% Argon for Aluminum spool gun use or 'push-pull' systems.
        * Verify that your machine is in DCRP - especially if you suspect someone may have used a self-shielding flux wire before you go to use it. Fortunately, mig machines are set up in DCRP by default so you may never encounter a reason to change your polarity.

    """, description3: """
    5. Choose and Load the Wire:
        * Select the appropriate wire diameter and type for your material and welding position.
        * Wire diameters are typical: .023", .030", .035", .045", and .062".
        * Make sure the drive rolls match the wire diameter you intend to use.
        * For steel: Use ER70s-3 or ER70s-6 - unless material requires another type.
        * For Aluminum: Use ER4043 or ER5356 - unless material requires another type.
        * Feed the wire through the drive rolls and welding gun.

    6. Set Voltage and Wire Feed Speed:
        * Adjust the voltage and wire feed speed according to the material thickness and wire diameter.
        * Determine which mode of transfer you need to be in. For example: 1/4" steel using .035" is in short circuit between 14-24 volts, with a wire speed range between 75-420 ipm typically. Spray transfer will be set with this same material and wire diameter with settings over 24 volts with wire speed over 420 ipm. A different mix of shielding gas would be preferable to achieve a more accurate spray mode of transfer.

    7. Test Weld & Gas Flow:
        * Perform a test weld on scrap material to check settings.
        * Adjust the gas flow rate as necessary (typically 15-25 CFH for most applications).
        * Tip: Ensure a consistent gas shield. Inadequate shielding can cause porosity.
    """, description4: """
    8. Weld:
        * Keep the torch at a 10°-15° push angle. A drag angle can also be used on flat position welds for more penetration and deposition.
        * Maintain a consistent stick-out (distance from the tip to the workpiece).
        * Tip: Use the "short circuit" GMAW method for thinner materials to prevent burn-through.
        * 'Short Circuit' is not recommended to be used on 'pre-qualified' code weldments because of the lack of fusion posibilities it presents on thicker metals.
        * 'Spray' mode of transfer is an acceptable mode to use for greater arc energies for proper fusion. However, it is limited to flat and horizontal welds only.

    9. Post-Welding Procedures:
        * Check the weld for consistency and potential defects.
        * Clean the weld if necessary using brushes or anti-spatter sprays.
        * Tip: Regularly clean the welding gun's nozzle and tip to ensure optimal performance.

    10. Regular Maintenance:
        * Periodically check the GMAW machine, especially the contact tips, liners, and drive rolls for wear.
        * Tip: Regular maintenance can reduce downtime and ensure consistent weld quality. Buy a bag of contact tips, especially if you are using a spoolgun to weld aluminum.
    """, image: "SmallMig", gradient: LinearGradient(
            gradient: Gradient(stops: [
        .init(color: Color(#colorLiteral(red: 0.25275975465774536, green: 0.10255205631256104, blue: 0.7458333373069763, alpha: 1)), location: 0),
        .init(color: Color(#colorLiteral(red: 0.18777775764465332, green: 0.678086519241333, blue: 0.8666666746139526, alpha: 1)), location: 1)]),
            startPoint: UnitPoint(x: 0.5002249700310126, y: 3.0834283490377423e-7),
            endPoint: UnitPoint(x: -0.0016390833199537713, y: 0.977085239704672))),
    Item(title: "FCAW", text: "Quick Tips", image2: "FluxPanel", image3: "FluxCoreChart", image4: "FluxWeld18", image5: "FluxWeld17", descriptionqt: """
         Quick Settings

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
         """,
         description: """
Setting Up and Using a FCAW Welding Machine:

1. Safety First:
    * Wear appropriate PPE: auto-darkening helmet, safety glasses, flame-resistant clothing, welding gloves, and leather boots.
    * Ensure proper ventilation or utilize a fume extraction system.
""", description2: """
    2. Inspect the Equipment:
        * Check the machine, cables, torch, and other components for any visible damage.

    3. Prepare the Workspace:
        * Secure the workpiece using clamps or fixtures.
        * Clean the welding surface to remove contaminants like rust, oil, or paint.

    4. Set Up the Power and Gas:
        * Connect the welding machine to a suitable power supply.
        * For gas-shielded FCAW, connect the shielding gas cylinder, regulator, and gas hose.

    5. Select and Load the Filler Wire:
        * Choose the correct diameter and type of flux-cored wire for the job.
        * Feed the wire through the rollers and welding gun.
        * Tip: When selecting filler wire, prioritize wire quality. Poor quality wires can cause weld inconsistencies.
    """, description3: """
    Difference Between Dual-Shield and General-Purpose Flux Core Wire:

    Dual-Shield Flux Core Wire:
        * Description: This wire type relies on both the flux inside the core and an external shielding gas (often CO2 or a CO2/argon mix).
        * Advantages: Produces less spatter, offers good penetration, and typically results in a cleaner weld with fewer slag inclusions. Particularly beneficial for thicker materials and out-of-position welding.
        * Use Case: Ideal for applications that require higher performance and improved weld quality, such as structural steelwork in construction or heavy machinery fabrication.
        * Tip: Ensure the proper shielding gas flow rate is set, as this impacts the quality and appearance of the weld.

    General-Purpose Flux Core Wire (Self-Shielded):
        * Description: This wire type doesn't need an external shielding gas. The flux in its core produces the shielding once it's burned, protecting the molten weld pool from atmospheric contaminants.
        * Advantages: Portable and well-suited for outdoor welding or situations with drafts, where shielding gases could be blown away. Typically comes in smaller spools, making it handy for DIYers and those with lower-output machines.
        * Use Case: Useful for general repairs, hobbyist projects, and applications where the utmost weld appearance and minimal post-weld cleanup isn't critical.
        * Disadvantages: Quality and performance is not up to most code standards. Not recommended.
        * Tip: Ensure a clean workpiece surface; while self-shielded wires are forgiving, contaminants can still affect weld quality.
        * Polarity must be set for DCEN as opposed to more quality wire which runs on DCRP.
    """, description4: """
    6. Set Voltage and Wire Feed Speed:
        * Adjust settings according to the wire type, material thickness, and welding position.
        * Tip: Consistent voltage and optimal wire feed speed are crucial. These settings impact weld quality, spatter, and productivity.

    7. Test Your Settings:
        * Perform a test weld on a scrap piece of material.
        * For gas-shielded FCAW, adjust the gas flow rate (typically 20-25 CFH, but may vary based on conditions).

    8. Weld:
        * Maintain a proper stick-out and gun angle for the welding position.
        * Tip: For FCAW, "drag" or "pull" technique is often recommended, which means pointing the gun back towards the completed weld.

    9. Check the Weld:
        * Examine the weld for consistency, proper penetration, and potential defects like slag inclusions.
        * Clean the weld using a chipping hammer or wire brush.
        * Tip: FCAW often produces more spatter; using anti-spatter can help in cleanup.
    """, image: "SmallFlux", gradient: LinearGradient(
            gradient: Gradient(stops: [
        .init(color: Color(#colorLiteral(red: 0.3400427997112274, green: 0.060034722089767456, blue: 0.5541666746139526, alpha: 1)), location: 0),
        .init(color: Color(#colorLiteral(red: 0.9541666507720947, green: 0.3578125238418579, blue: 0.6255632638931274, alpha: 1)), location: 1)]),
            startPoint: UnitPoint(x: 0.5002249700310126, y: 3.0834283490377423e-7),
            endPoint: UnitPoint(x: -0.0016390833199537713, y: 0.977085239704672))),
    Item(title: "GTAW", text: "Quick Tips", image2: "TigPipe3", image3: "TigPanel", image4: "TigPipe4", image5: "TigTorch",
         descriptionqt: """
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
         """,
         description: """
Setting Up and Using a GTAW (TIG) Welding Machine

1. Select the Right Machine:
    * Ensure the GTAW machine is suitable for the type of metal you intend to weld (AC for aluminum and magnesium, DC for most other metals).
    * Check that the machine provides the required amperage for the thickness of the material.
""", description2: """
    2. Preparation of Tungsten Electrode:
        * Choose the appropriate tungsten type based on the metal (e.g., pure tungsten for aluminum, thoriated for steel).
        * Grind the tungsten electrode to a point; the grind marks should run parallel to the length of the electrode for optimal arc stability.

    3. Filler Wire Selection (as per AWS guidelines):
        * Choose a filler metal from the AWS A5.X series that matches the base metal and desired weld properties.
        * Ensure the diameter of the filler rod is appropriate for the material thickness and joint type.

    4. Setup of Torch & Controls:
        * Assemble the torch with the right collet, collet body, and nozzle size for the tungsten and welding application.
        * Set the machine's controls:
            * For polarity, use DCEN for most metals, and AC for aluminum and magnesium.
            * Adjust balance control (on AC machines) to control the cleaning vs. penetration effect on aluminum.
            * This adjustment basically controls how much the AC sine wave favors DCRP or DCSP - DCRP = Cleaning. DCSP = Penetration.

    """, description3: """
    5. Gas Selection & Flow Rate:
        * Use 100% argon for most metals. For some aluminum alloys, an argon-helium mix can be beneficial for increased heat input.
        * Set the shielding gas flow rate; typically, 15-25 cfh (cubic feet per hour) is a good starting point.

    6. Amperage Setting:
        * Adjust the machine’s amperage based on the material thickness and tungsten size. 130 amps is a good range to start with. 90 amps is good to start with on stainless steel.
        * For aluminum, setting the amperage double what you would for steel is a good idea because of aluminum's ability to rapidly dissipate heat more than most other metals. Don't be afraid to crank up the amps here, if your using a remote foot pedal or bump switch. The longer you linger at the start of the weld, waiting for the metal to be ready to weld, it has probably already started to transform into it's 'Hot Shortness' nature and drop out on you. Its better to go in hot and taper down the heat with your remote control as you run your bead.

    7. Remote Control Setting:
        * If using a foot pedal or a bump switch on the torch, set the machine to "remote" control. This provides amperage control while welding.

    """, description4: """
    8. High-Frequency Setting:
        * For easier arc starting without contaminating the tungsten, use a high-frequency start.
        * Ensure the high-frequency is set to “start only” for most metals. When welding aluminum, set it to "continuous."

    9. Prepare the Workpiece:
        * Clean the base metal thoroughly to remove any contaminants (e.g., oxides, oil, dirt).
        * If welding aluminum, brush the surface with a stainless-steel wire brush to remove the aluminum oxide layer.

    10. Safety:
        * Always wear the appropriate PPE (Personal Protective Equipment): a welding helmet with the right shade, welding gloves, and protective clothing.

    Extra Tips:
        * Most SMAW machines can be converted to GTAW. Every GTAW machine usually has SMAW features by default.
        * When welding aluminum, preheat of at least 200 deg Fahrenheit can be beneficial for thicker sections, helping to reduce the risk of cracking.


    Remember, every welding situation can be unique, so always consult AWS guidelines, machine manuals, and experienced welders when in doubt.
    """, image: "SmallTig", gradient: LinearGradient(
            gradient: Gradient(stops: [
        .init(color: Color(#colorLiteral(red: 0.07058823108673096, green: 0.26666659116744995, blue: 0.5607843399047852, alpha: 1)), location: 0),
        .init(color: Color(#colorLiteral(red: 0.3376389145851135, green: 0.9208333492279053, blue: 0.8508499264717102, alpha: 1)), location: 1)]),
            startPoint: UnitPoint(x: 0.8472221674106832, y: -0.36111113989033466),
            endPoint: UnitPoint(x: -0.4110787222278236, y: 1.8127854520696247))),
    Item(title: "Weld Symbols", text: "Quick Tips", image2: "MainSymbol", image3: "Basic1", image4: "Basic2", image5: "Basic3",
         descriptionqt: """
         Understand the Elements of Welding Symbols:

            * Reference Line: The basis of the welding symbol.
            * Arrow: Connects the reference line to the joint.
            * Basic Weld Symbols: Indicate the type of welding.
            * Dimensions and Other Data: Provide details like size, length, spacing, etc.
            * Supplementary Symbols: Convey additional information.
            * Finish Symbols: Indicate the method of finishing.
            * Tail and Specification: Used for additional references or processes.
            * Process or Other Reference: Specifies the welding process or other necessary information.
         """,
         description: """
        1. Study the Basic Weld Symbols: Familiarize yourself with the basic weld symbols shown in the table, like square, bevel, V, U, J, flare V, and flare bevel. Understand that these symbols represent the type of weld desired.

        2. Learn to Interpret Welding Symbols: Welding symbols are more complex and can include up to eight elements. Understand that these symbols convey detailed welding instructions. Focus on each element, like the reference line, arrow, dimensions, and supplementary symbols.

        3. Use Visual Aids: Refer to figures and diagrams, like Fig. 1 in the document, which show the standard location of elements in a welding symbol. Visual aids can help you understand how the symbols are structured and read.
""", description2: """
        4. Reference Guides and Standards: Keep a copy of ANSI/AWS A2.4-79 or any updated version handy for reference. This standard provides detailed descriptions and examples of welding symbols.

        5. Learn the Difference Between Weld Symbol and Welding Symbol: Understand that a weld symbol represents only the type of weld, while a welding symbol includes comprehensive instructions.

    """, description3: """
        6. Practice Reading Symbols: Practice interpreting symbols from the document or other resources. Start with simple weld symbols and gradually move to more complex welding symbols.

        7. Online Tutorials and Courses: Consider online resources, tutorials, and courses that provide visual and interactive ways to learn welding symbols.

    """, description4: """
        8. Consult with Experienced Welders or Instructors: If possible, consult with experienced welders or instructors who can provide insights and practical tips on interpreting welding symbols.

        9. Hands-On Practice: Apply your knowledge by reading the symbols on actual welding drawings or during practical welding exercises.

        10. Understanding welding symbols is crucial for accurate communication in the field of welding, and becoming proficient requires time and practice.
    """, image: "FillerMetals", gradient: LinearGradient(
            gradient: Gradient(stops: [
        .init(color: Color(#colorLiteral(red: 0.9969777843, green: 0.7088937798, blue: 1, alpha: 1)), location: 0),
        .init(color: Color(#colorLiteral(red: 1, green: 0.4107720319, blue: 0.1538359534, alpha: 1)), location: 1)]),
            startPoint: UnitPoint(x: 0.8472221674106832, y: -0.36111113989033466),
            endPoint: UnitPoint(x: -0.4110787222278236, y: 1.8127854520696247))),
    Item(title: "Inspection", text: "Quick Tips", image2: "Crack2", image3: "Insp2", image4: "Insp1", image5: "B2.1",
         descriptionqt: """
         Quick Checklist for Welders and Inspectors:

         1. Visual Inspection:
            * Check for obvious defects such as cracks, porosity, undercutting, and incomplete fusion.
            * Ensure the weld size meets the specifications (width, length, and height).
            * Look for any surface irregularities like spatter, uneven bead profile, and misalignment.

         2. Dimensional Checks:
            * Verify that the dimensions of the welded components align with the engineering drawings and specifications.
            * Measure the leg length and throat size of fillet welds.
            * Check the weld reinforcement and penetration depth for groove welds.

         3. Non-Destructive Testing (NDT):
            * Employ methods like ultrasonic testing, radiographic testing, magnetic particle testing, and dye penetrant inspection to detect internal and surface defects.
            * Choose the NDT method based on the type of material, weld, and defects suspected.

         4. Destructive Testing:
            * In some cases, carry out destructive tests like bend tests, tensile tests, and impact tests to evaluate the mechanical properties of the weld.
            * Use these tests primarily for procedure qualification and welder performance qualification.

         5. Welder and Procedure Qualification:
            * Verify that the welders are qualified to perform the welding as per the required standards and procedures.
            * Ensure that the welding procedure specifications (WPS) are approved and followed during the welding process.

         6. Material Verification:
            * Confirm that the materials used (base metals, filler metals, shielding gases) comply with the specifications and are appropriate for the welding process.

         7. Welding Equipment and Settings:
            * Inspect welding equipment for proper function and calibration.
            * Ensure that the welding parameters (amperage, voltage, travel speed) adhere to the WPS.

         8. Record Keeping and Documentation:
            * Maintain accurate records of inspections, tests, and certifications.
            * Document any non-conformities and ensure corrective actions are taken.
            * Confirm compliance with relevant codes, standards (like AWS, ASME), and legal requirements.
         """,
         description: """
A welder or inspector following the American Welding Society (AWS) standards must be vigilant about various types of discontinuities that may occur during the welding process. Discontinuities are interruptions in the typical structure of a material or welding, which may or may not affect the integrity of the weld. Here's a brief overview of the main types:
""", description2: """
1. Cracks:
    * These are serious welding defects that can occur in the weld metal or parent material. They can be hot or cold, longitudinal, transverse, crater, or underbead cracks, and are often due to stress and improper welding parameters.

2. Porosity:
    * This refers to small gas pockets or voids that are trapped within the weld as it solidifies. It can be scattered or clustered and often results from contaminated materials or improper shielding gas coverage.

3. Slag Inclusions:
    * These are non-metallic solid materials trapped in the weld metal or between the weld and the base metal. Usually, this is due to improper cleaning between weld passes or insufficient control of the welding process.

4. Incomplete Fusion:
    * This occurs when the weld metal fails to fuse completely with the base metal or preceding weld bead, which can result from low heat input, incorrect angle, or speed during welding.

5. Incomplete Penetration (Lack of Penetration):
    * This happens when the weld metal does not extend through the joint thickness. It is a critical discontinuity that can significantly weaken the weld.
""", description3: """
6. Undercut:
    * A groove melted into the base metal adjacent to the weld toe or weld root and left unfilled by weld metal can weaken the joint and become a stress concentrator.

7. Overlap:
    * This is the protrusion of weld metal beyond the weld toe or root which is not fused with the base metal and can create areas of stress concentration.

8. Mismatch (Hi-Lo):
    * A condition where two pieces being welded together are not properly aligned. It can cause uneven stress distribution in the finished weld.

9. Weld Spatter:
    * Although usually cosmetic, excessive spatter can be indicative of underlying problems with welding parameters and may require additional cleaning.

10. Arc Strikes:
    * These are localized areas of remelted metal outside the weld area, often caused by accidental contact with the welding arc. They can lead to weakened areas prone to cracking.
""", description4: """
Each discontinuity has a specific nature, cause, and potential remedy. A welder must be able to identify and evaluate these based on acceptance criteria defined by AWS standards to ensure the structural integrity and reliability of the weldment.

Along with the AWS, other organizations have their own unique set of codes and standards. The following is a non-exhaustive list:
    * AWS D1.1 - Structural steel welding code - SMAW, GMAW, FCAW, Submerged Arc Welding - Prequalified sections.
    * AWS D1.2 - Structural aluminum welding code - GMAW and GTAW - no Prequalified sections.
    # AWS D1.3 - Structural sheet steel code - Prequalified sections.
    * AWS D1.4 - Structural reinforcing bars steel - no Prequalified sections.
    * AWS D1.5 - Bridge Welding code - no Prequalified sections.
    * AWS D1.6 - Structural Stainless steel  - no Prequalified sections.
    * AWS D1.7 - Repairing of existing structures
    * AWS D1.9 - Structural Titanium code - no Prequalified sections.
    * AWS D17 - Aerospace
    * API 1104 - Pipelines
    * ASME Section IX - Welding and brazing
    * ASME B31.3 - Process Piping
""", image: "WeldInspection", gradient: LinearGradient(
            gradient: Gradient(stops: [
        .init(color: Color(#colorLiteral(red: 0.1600282772, green: 0.2040334853, blue: 1, alpha: 1)), location: 0),
        .init(color: Color(#colorLiteral(red: 0.3376389145851135, green: 0.9208333492279053, blue: 0.8508499264717102, alpha: 1)), location: 1)]),
            startPoint: UnitPoint(x: 0.8472221674106832, y: -0.36111113989033466),
            endPoint: UnitPoint(x: -0.4110787222278236, y: 1.8127854520696247)))
]
