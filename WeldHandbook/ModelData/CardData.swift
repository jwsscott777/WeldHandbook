//


import SwiftUI

struct Item: Identifiable {
    var id = UUID()
    var title: String
    var text: String
    var description: String
    var image: String
    var gradient: LinearGradient
}

var items = [
    Item(title: "SMAW", text: "Quick Tips", description: """
Setting Up and Using a SMAW (Shielded Metal Arc Welding) Machine: Quick Checklist

1. Safety First:
    * Wear appropriate personal protective equipment (PPE): welding helmet, safety glasses, flame-resistant clothing, welding gloves, and leather boots.
    * Ensure a well-ventilated area or use an exhaust system to remove welding fumes.
    * Check the area for any flammable materials and ensure they're safely away from the welding zone.

2. Inspect Equipment:
    * Check the welding machine for any visible damage.
    * Ensure the power cable, electrode holder, ground clamp, and welding leads are in good condition (no exposed wires or damage).

3. Setup Workspace:
    * Secure the workpiece using clamps or fixtures.
    * Clean the workpiece surface using a wire brush or grinder to remove rust, paint, or any contaminants.
    * Attach the ground clamp as close to the welding area as possible.

4. Power Up:
    * Connect the machine to an appropriate power source.
    * Turn on the welding machine.

5. Select the Right Electrode:
    * Choose the appropriate electrode based on the material you're welding and the welding position.
    * Insert the electrode into the electrode holder.

6. Set Current & Polarity:
    * Adjust the machine's current setting (amperage) as recommended for the electrode size and type.
    * Set the correct polarity (either Direct Current Electrode Positive (DCEP) or Direct Current Electrode Negative (DCEN)) based on electrode specifications.
    * For example: E6010 1/8" diameter should be run at 90 amps at DCRP or DCEP.
    * For example: E7018 1/8" diameter should be run at 110 - 140 amps at DCRP or DCEP.
    * For example: E7024 1/8" diameter should be run at 140 - 160 amps at DCEN or DCSP.

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

10. Shut Down:
    * Turn off the welding machine.
    * Safely store the electrode holder and ground clamp.
    * Disconnect the machine from the power source.
    * Allow the machine and welded materials to cool before handling.

Post-Welding Cleanup:
    * Clean and organize the workspace.
    * Inspect your weld for consistency, penetration, and potential defects.
    * Periodically check and maintain your SMAW machine to ensure its longevity and safe operation.

""", image: "SmallStick", gradient: LinearGradient(
            gradient: Gradient(stops: [
        .init(color: Color(#colorLiteral(red: 0.29981932044029236, green: 0.13958334922790527, blue: 0.8374999761581421, alpha: 1)), location: 0),
        .init(color: Color(#colorLiteral(red: 0.7541666626930237, green: 0.2042534351348877, blue: 0.583319902420044, alpha: 1)), location: 1)]),
            startPoint: UnitPoint(x: 0.5002249700310126, y: 3.0834283490377423e-7),
            endPoint: UnitPoint(x: -0.0016390833199537713, y: 0.977085239704672))),
    Item(title: "GMAW", text: "Quick Tips", description: """
Setting Up and Using a GMAW (Gas Metal Arc Welding) Machine:

1. Safety First:
    * Wear suitable personal protective equipment (PPE): auto-darkening welding helmet, safety glasses, flame-resistant clothing, welding gloves, and leather boots.
    * Ensure adequate ventilation or employ a fume extraction system.
    * Keep flammable materials away from the welding area.

2. Inspect the Machine and Components:
    * Check for any visible damage to the machine.
    * Inspect the power cable, torch, ground clamp, and welding leads for wear or damage.

3. Setting Up the Workspace:
    * Secure the workpiece with clamps or fixtures.
    * Clean the welding surface using a wire brush or grinder to remove contaminants.
    * Attach the ground clamp close to the welding area.
    * Tip: Grounding closer to the work reduces energy losses.

4. Power and Gas Setup:
    * Connect the welding machine to the correct power source.
    * Connect the gas cylinder and ensure that the regulator and gas hose are properly attached.
    * Tip: Use the right shielding gas mix for the material. For instance, use 75% Argon / 25% CO2 for mild steel.

5. Choose and Load the Wire:
    * Select the appropriate wire diameter and type for your material and welding position.
    * Wire diameters are typical: .023", .030", .035", .045", and .062".
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

8. Weld:
    * Keep the torch at a 10°-15° push angle.
    * Maintain a consistent stick-out (distance from the tip to the workpiece).
    * Tip: Use the "short circuit" GMAW method for thinner materials to prevent burn-through.

9. Post-Welding Procedures:
    * Check the weld for consistency and potential defects.
    * Clean the weld if necessary using brushes or anti-spatter sprays.
    * Tip: Regularly clean the welding gun's nozzle and tip to ensure optimal performance.

10. Regular Maintenance:
    * Periodically check the GMAW machine, especially the contact tips, liners, and drive rolls for wear.
    * Tip: Regular maintenance can reduce downtime and ensure consistent weld quality.
""", image: "SmallMig", gradient: LinearGradient(
            gradient: Gradient(stops: [
        .init(color: Color(#colorLiteral(red: 0.25275975465774536, green: 0.10255205631256104, blue: 0.7458333373069763, alpha: 1)), location: 0),
        .init(color: Color(#colorLiteral(red: 0.18777775764465332, green: 0.678086519241333, blue: 0.8666666746139526, alpha: 1)), location: 1)]),
            startPoint: UnitPoint(x: 0.5002249700310126, y: 3.0834283490377423e-7),
            endPoint: UnitPoint(x: -0.0016390833199537713, y: 0.977085239704672))),
    Item(title: "FCAW", text: "Quick Tips", description: """
Setting Up and Using a FCAW Welding Machine:

1. Safety First:
    * Wear appropriate PPE: auto-darkening helmet, safety glasses, flame-resistant clothing, welding gloves, and leather boots.
    * Ensure proper ventilation or utilize a fume extraction system.

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
    * Tip: Ensure a clean workpiece surface; while self-shielded wires are forgiving, contaminants can still affect weld quality.

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
    Item(title: "GTAW", text: "Quick Tips", description: """
Setting Up and Using a GTAW (TIG) Welding Machine

1. Select the Right Machine:
    * Ensure the GTAW machine is suitable for the type of metal you intend to weld (AC for aluminum and magnesium, DC for most other metals).
    * Check that the machine provides the required amperage for the thickness of the material.

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

5. Gas Selection & Flow Rate:
    * Use 100% argon for most metals. For some aluminum alloys, an argon-helium mix can be beneficial for increased heat input.
    * Set the shielding gas flow rate; typically, 15-25 cfh (cubic feet per hour) is a good starting point.

6. Amperage Setting:
    * Adjust the machine’s amperage based on the material thickness and tungsten size.

7. Remote Control Setting:
    * If using a foot pedal, set the machine to "remote" control. This provides amperage control while welding.

8. High-Frequency Setting:
    * For easier arc starting without contaminating the tungsten, use a high-frequency start.
    * Ensure the high-frequency is set to “start only” for most metals. When welding aluminum, set it to "continuous."

9. Prepare the Workpiece:
    * Clean the base metal thoroughly to remove any contaminants (e.g., oxides, oil, dirt).
    * If welding aluminum, brush the surface with a stainless-steel wire brush to remove the aluminum oxide layer.

10. Safety:
    * Always wear the appropriate PPE (Personal Protective Equipment): a welding helmet with the right shade, welding gloves, and protective clothing.

Extra Tips:
    * Always practice on scrap metal to refine settings before welding on the final workpiece.
    * When welding aluminum, preheat can be beneficial for thicker sections, helping to reduce the risk of cracking.
    * For critical applications, refer to AWS D1.1 (or the relevant AWS code) for specific guidelines on GTAW welding and procedure qualification.

Remember, every welding situation can be unique, so always consult AWS guidelines, machine manuals, and experienced welders when in doubt.
""", image: "SmallTig", gradient: LinearGradient(
            gradient: Gradient(stops: [
        .init(color: Color(#colorLiteral(red: 0.07058823108673096, green: 0.26666659116744995, blue: 0.5607843399047852, alpha: 1)), location: 0),
        .init(color: Color(#colorLiteral(red: 0.3376389145851135, green: 0.9208333492279053, blue: 0.8508499264717102, alpha: 1)), location: 1)]),
            startPoint: UnitPoint(x: 0.8472221674106832, y: -0.36111113989033466),
            endPoint: UnitPoint(x: -0.4110787222278236, y: 1.8127854520696247))),
    Item(title: "Filler Metals", text: "Quick Tips", description: """
Setting Up and Using a GTAW (TIG) Welding Machine

1. Select the Right Machine:
    * Ensure the GTAW machine is suitable for the type of metal you intend to weld (AC for aluminum and magnesium, DC for most other metals).
    * Check that the machine provides the required amperage for the thickness of the material.

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

5. Gas Selection & Flow Rate:
    * Use 100% argon for most metals. For some aluminum alloys, an argon-helium mix can be beneficial for increased heat input.
    * Set the shielding gas flow rate; typically, 15-25 cfh (cubic feet per hour) is a good starting point.

6. Amperage Setting:
    * Adjust the machine’s amperage based on the material thickness and tungsten size.

7. Remote Control Setting:
    * If using a foot pedal, set the machine to "remote" control. This provides amperage control while welding.

8. High-Frequency Setting:
    * For easier arc starting without contaminating the tungsten, use a high-frequency start.
    * Ensure the high-frequency is set to “start only” for most metals. When welding aluminum, set it to "continuous."

9. Prepare the Workpiece:
    * Clean the base metal thoroughly to remove any contaminants (e.g., oxides, oil, dirt).
    * If welding aluminum, brush the surface with a stainless-steel wire brush to remove the aluminum oxide layer.

10. Safety:
    * Always wear the appropriate PPE (Personal Protective Equipment): a welding helmet with the right shade, welding gloves, and protective clothing.

Extra Tips:
    * Always practice on scrap metal to refine settings before welding on the final workpiece.
    * When welding aluminum, preheat can be beneficial for thicker sections, helping to reduce the risk of cracking.
    * For critical applications, refer to AWS D1.1 (or the relevant AWS code) for specific guidelines on GTAW welding and procedure qualification.

Remember, every welding situation can be unique, so always consult AWS guidelines, machine manuals, and experienced welders when in doubt.
""", image: "FillerMetals", gradient: LinearGradient(
            gradient: Gradient(stops: [
        .init(color: Color(#colorLiteral(red: 0.9969777843, green: 0.7088937798, blue: 1, alpha: 1)), location: 0),
        .init(color: Color(#colorLiteral(red: 1, green: 0.4107720319, blue: 0.1538359534, alpha: 1)), location: 1)]),
            startPoint: UnitPoint(x: 0.8472221674106832, y: -0.36111113989033466),
            endPoint: UnitPoint(x: -0.4110787222278236, y: 1.8127854520696247))),
    Item(title: "Inspection", text: "Quick Tips", description: """
Setting Up and Using a GTAW (TIG) Welding Machine

1. Select the Right Machine:
    * Ensure the GTAW machine is suitable for the type of metal you intend to weld (AC for aluminum and magnesium, DC for most other metals).
    * Check that the machine provides the required amperage for the thickness of the material.

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

5. Gas Selection & Flow Rate:
    * Use 100% argon for most metals. For some aluminum alloys, an argon-helium mix can be beneficial for increased heat input.
    * Set the shielding gas flow rate; typically, 15-25 cfh (cubic feet per hour) is a good starting point.

6. Amperage Setting:
    * Adjust the machine’s amperage based on the material thickness and tungsten size.

7. Remote Control Setting:
    * If using a foot pedal, set the machine to "remote" control. This provides amperage control while welding.

8. High-Frequency Setting:
    * For easier arc starting without contaminating the tungsten, use a high-frequency start.
    * Ensure the high-frequency is set to “start only” for most metals. When welding aluminum, set it to "continuous."

9. Prepare the Workpiece:
    * Clean the base metal thoroughly to remove any contaminants (e.g., oxides, oil, dirt).
    * If welding aluminum, brush the surface with a stainless-steel wire brush to remove the aluminum oxide layer.

10. Safety:
    * Always wear the appropriate PPE (Personal Protective Equipment): a welding helmet with the right shade, welding gloves, and protective clothing.

Extra Tips:
    * Always practice on scrap metal to refine settings before welding on the final workpiece.
    * When welding aluminum, preheat can be beneficial for thicker sections, helping to reduce the risk of cracking.
    * For critical applications, refer to AWS D1.1 (or the relevant AWS code) for specific guidelines on GTAW welding and procedure qualification.

Remember, every welding situation can be unique, so always consult AWS guidelines, machine manuals, and experienced welders when in doubt.
""", image: "WeldInspection", gradient: LinearGradient(
            gradient: Gradient(stops: [
        .init(color: Color(#colorLiteral(red: 0.1600282772, green: 0.2040334853, blue: 1, alpha: 1)), location: 0),
        .init(color: Color(#colorLiteral(red: 0.3376389145851135, green: 0.9208333492279053, blue: 0.8508499264717102, alpha: 1)), location: 1)]),
            startPoint: UnitPoint(x: 0.8472221674106832, y: -0.36111113989033466),
            endPoint: UnitPoint(x: -0.4110787222278236, y: 1.8127854520696247)))
]
