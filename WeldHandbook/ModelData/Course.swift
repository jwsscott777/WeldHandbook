//
//  Course.swift
//  WeldBook
//
//  Created by JWSScott777 on 11/10/22.
//

import SwiftUI

struct Course: Identifiable {
    var id = UUID()
    var title: String
    var subtitle: String
    var image: String
    var image2: String
    var image3: String
    var image4: String
    var image5: String
    var color: Color
    var description: String
    var description2: String
    var description3: String
    var description4: String
}

var courses = [
    Course(
        title: "WELD PROCESSES",
        subtitle: "Main Processes",
        image: "Weld16",
        image2: "Braze",
        image3: "Stick",
        image4: "Mig",
        image5: "wirefeeder",
        color: Color(#colorLiteral(red: 0, green: 0.5217629075, blue: 1, alpha: 1)),
        description: """
Understanding Welding: Processes and Techniques

        Welding is a subject that, though seemingly straightforward, boasts a myriad of nuances and complexities. The American Welding Society, an authoritative voice in the welding industry, defines welding as a 'localized coalescence' – a precise process of fusing two metals into a single, unified piece. At its core, welding requires the metals intended for joining to be in a liquid state, ensuring that upon solidification, they meld seamlessly at the point of fusion.

        To achieve this fusion, a variety of 'processes' have been devised, each with the primary goal of generating enough heat to melt metals. The melting points of metals, naturally, vary based on their composition and type. However, the principle remains: welding processes, whether they derive heat electrically or chemically, are designed to meet these specific melting needs.
""",
        description2: """
        Oxyacetylene Welding: A classic method, it relies on the combined power of oxygen and acetylene gases to produce a high-heat flame suitable for a range of metals. Although the flame can be employed for brazing – where only the filler metal is melted, leaving the base metal solid – its primary usage in contemporary times is confined to cutting ferrous materials.
""",
        description3: """
        SMAW (Shielded Metal Arc Welding): A process where an electric arc is passed through a flux-coated electrode, which matches the base metal's type, resulting in the melting of both the electrode and the base metal. Praised for its versatility, SMAW finds applications from minor repairs to intensive pipe welding. A significant advantage lies in its resilience against windy outdoor conditions.

        GTAW (Gas Tungsten Arc Welding): A technique where heat is generated between a tungsten electrode and the base metal. Unlike other processes, the filler metal is introduced separately to the molten puddle. Shielding typically involves 100% argon, though thicker aluminum demands an argon-helium mix for rapid puddle development. GTAW is especially favored for welding stainless steel and other specialty metals.
""",
        description4: """
        GMAW (Gas Metal Arc Welding): This method employs an electric arc between a continuously fed metal electrode wire and the base metal, providing both the heat and filler metal necessary for welding. The welding arc is enveloped by an argon-based shielding gas, occasionally mixed with CO2 and O2 for enhanced performance. GMAW's popularity spans both professionals and novices, owing to its straightforward setup. However, achieving code quality welding demands meticulous adjustments to voltage and wire speed, a feat only attainable with considerable experience.

        FCAW (Flux Cored Arc Welding): Sharing many similarities with GMAW, FCAW stands out due to its flux core, a design reminiscent of the SMAW process. This process comes in two variants. The first depends solely on the wire's internal flux for shielding the weld, while the second combines this with an external argon mix gas for superior weld quality, a method often termed 'Dual Shield' flux cored arc welding.
"""
    ),
    Course(
        title: "OXYACETYLENE",
        subtitle: "OxyFuel Welding",
        image: "Weld15",
        image2: "oxyfuelset-9470",
        image3: "oxyfuelset2-9476",
        image4: "oxyfuelset3-9483",
        image5: "oxyfuelset4-9500",
        color: Color(#colorLiteral(red: 0.3150139749, green: 0, blue: 0.8982304931, alpha: 1)),
        description: """
Oxyfuel Welding: Process and Precautions

    Oxyfuel welding, while perhaps no longer the pinnacle of welding techniques, retains its essential place in the annals of welding methodologies. Defined by its simplicity, the process leverages basic equipment: a bottle each of acetylene and oxygen, regulators, hoses, and a torch designed to amalgamate the two gases. This straightforwardness is the cornerstone of its charm, offering the flexibility to weld in remote locations devoid of electrical connectivity.
""",
        description2: """
    To begin with oxyfuel welding, there's a structured approach to adopt. Your journey should start with the acquisition of the manufacturer's instructions tailored to your specific equipment brand. These guidelines are crucial, serving as your initial compass in the expansive realm of oxyfuel welding.

    Upon determining the thickness of the steel you're dealing with, the manufacturer's guidelines will direct you to an appropriate tip selection and specify the requisite flow rates. Once these essentials are pinpointed, you'll embark on an equipment check – ensuring connections are tight, and everything is in prime working order.
""",
        description3: """
    To gauge your tank pressure, a simple step is to open the valve on each of the bottles. Subsequently, the adjusting screws on the regulators come into play. These are tweaked until your desired working pressure is attained. For instance, for a #2 tip designated for a 1/8-inch thickness, both the oxygen and acetylene should be calibrated to 3 psi.

    A critical point of consideration revolves around the bottle's valve turns. The oxygen valve necessitates complete opening until it is firmly seated. In contrast, the acetylene bottle requires a more nuanced approach: it should only be opened just enough to establish tank pressure. This differential handling stems from safety considerations: in emergencies, the acetylene tank must be the first to be shut off, even before the oxygen bottle, which is why its full opening is discouraged.

    As for the torch lighting sequence, it’s paramount to open the acetylene valve first. Employing a flint striker, initiate a flame, adjusting it until the pronounced carbon soot significantly diminishes. Gradually, introduce oxygen to the flame, fine-tuning until you achieve a neutral flame. Upon conclusion of the welding, a strict protocol is observed: shut off the acetylene first, extinguishing the flame, followed by the oxygen. This sequence ensures the absence of lingering acetylene in the tip post-operation.
""",
        description4: """
    For 'Oxyfuel Cutting', the foundational principles remain relatively similar. However, a standout distinction emerges in the working pressures: oxygen consistently demands a higher pressure than acetylene, as recommended by manufacturers.

    In essence, while oxyfuel welding might not be the trendiest technique today, its versatility and adaptability, especially in off-grid scenarios, make it an invaluable tool in the welder's arsenal. Proper adherence to safety and operational guidelines is pivotal, ensuring both quality work and a safe working environment.
"""
    ),
    Course(
        title: "SMAW PROCESS",
        subtitle: "Stick Welding",
        image: "Weld1",
        image2: "welder",
        image3: "RedStick",
        image4: "StickFace",
        image5: "inverter",
        color: Color(#colorLiteral(red: 0, green: 0.7283110023, blue: 1, alpha: 1)),
        description: """
SMAW(Shielded Metal Arc Welding): Process Information

    SMAW (Shielded Metal Arc Welding), often colloquially known as 'stick welding', stands tall among the most time-tested electric arc welding processes. Its historical significance, combined with its robustness, often makes it the foundational learning tool for novices in the welding domain. Though technologically older, the merits of SMAW ensure its persistent relevance in the industry.
""",
        description2: """
    To comprehend SMAW's essence, it's imperative to grasp its underlying principles. SMAW operates on a Constant Current (CC) principle, sometimes referred to as Constant Amperage. In layman's terms, this implies that the output current, once set, remains relatively stable, while the voltage might vary to align with the chosen current. This trait of being a CC-type welding system means that, when necessary, SMAW equipment can be transitioned to serve Gas Tungsten Arc Welding (GTAW) purposes, demonstrating its adaptability.
""",
        description3: """
    SMAW machines are diverse, available in configurations like A/C (Alternating Current), D/C (Direct Current), and the combined A/C D/C. For those striving for code quality welding, D/C remains the gold standard, chiefly due to its stable arc that doesn't face the periodic extinguishing seen in A/C. Notably, while many electrodes are versatile enough for either polarity or current type, Direct Current Reverse Polarity (DCRP) is predominantly preferred. The reason? DCRP concentrates more heat at the electrode, while Direct Current Straight Polarity (DCSP) directs it more towards the workpiece. A/C, on the other hand, is a potent remedy for arc blow issues, though it's not a panacea for operator-induced inefficiencies. One of SMAW's commendable attributes is its adaptability to out-of-position welding, thanks to electrodes specially crafted for the task.

    A proficient welder isn't merely defined by their practical skills but also by their intimate knowledge of their equipment. This entails discerning the intricacies of their machine, including the setup for the desired polarity. For instance, many might overlook the fact that an A/C-only machine lacks a polarity switch – a seemingly small detail that can make a significant difference in welding outcomes. Furthermore, understanding how to accurately gauge amperages and discern the machine's duty cycle – its operational time in a given period without overheating – is vital.
""",
        description4: """
    Regrettably, even seasoned welders sometimes falter in these theoretical areas. If you, as a reader, find yourself grappling with these concepts, do not yield to the allure of complacency. Embrace curiosity and the pursuit of knowledge. Seek out mentors, engage in discussions, or attend workshops. Ensuring you are well-acquainted with your equipment's ins and outs is not merely a professional asset; it's a safety imperative. In the world of welding, knowledge isn't just power – it's the backbone of precision, safety, and excellence.
"""
    ),
    Course(
        title: "GMAW PROCESS",
        subtitle: "Mig Welding",
        image: "Weld7",
        image2: "Welding7-1792",
        image3: "wirefeeder",
        image4: "Mig",
        image5: "inverter",
        color: Color(#colorLiteral(red: 0.9467853904, green: 0.2021691203, blue: 0.3819385171, alpha: 1)),
        description: """
GMAW(Gas Metal Arc Welding): A brief Look

    GMAW (Gas Metal Arc Welding) is a standout among the welding processes and boasts significant popularity among both hobbyists and professionals. Its 'Constant Voltage' characteristic differentiates it from many other welding techniques. Ensuring Direct Current Reverse Polarity (DCRP) and abstaining from AC is imperative for achieving the desired weld quality in GMAW.
""",
        description2: """
    The shielding gas, primarily composed of 100% argon for aluminum and an argon-CO2 mix for mild steels, plays a crucial role. This blend ensures the stability and purity of the weld, preventing oxidation and other contamination.

    The perceived ease of GMAW, often labeled 'MIG' welding, can be misleading. While many attest to its simplicity, achieving mastery in this method is far from straightforward. The prevalent misconception might arise from its beginner-friendly initiation phase. But diving deeper, the intricate nuances of GMAW demand detailed attention, understanding, and practice. Unfortunately, the vast sea of fragmented information available on this topic can be confusing for many. Comprehensive sources offering clarity on GMAW's intricacies can sometimes be challenging to come by.
""",
        description3: """
    For instance, let's dissect the concept of 'transfer modes.' GMAW has multiple modes, including 'short circuit,' 'globular,' 'pulse,' and 'spray.' Distinguishing between them and setting your machine accurately for each mode is pivotal. In a generalized context, for a 0.035 wire size, material thickness of 1/4 inch, and a shielding gas mix of 75% argon and 25% CO2, the 'short circuit mode' is typically achieved with voltage settings ranging between 17-24 volts and wire speeds between 75-420 inches per minute. Transcending these settings, you would transition to the “spray mode”. But remember, shifting to this mode may necessitate a change in the gas blend to elevate the arc's energy.

    Each transfer mode offers unique advantages. The 'short circuit mode,' for instance, is preferred for welding out of position or when addressing larger gaps in imperfectly aligned joints. However, it has its limitations, especially when ensuring thorough fusion in pressurized vessels or pipes. In contrast, the "spray transfer mode" is revered for its guarantee of optimal fusion, making it ideal for code-quality welding. Its primary limitation? It's primarily restricted to flat and horizontal position welding and demands significant expertise for managing large gaps.

    Selecting the appropriate wire size is another pivotal aspect of GMAW. While 0.035 wire size is versatile enough for materials ranging between 1/8” to ½”, for thicker materials (½” and above), the 0.045 wire is preferable. On the other end of the spectrum, working with sheet metal necessitates switching to 0.023-0.030 sized wires.
""",
        description4: """
    Lastly, an essential technical note for GMAW enthusiasts: all GMAW filler metals are optimized for Direct Current Electrode Positive (DCEP) or reverse polarity. This configuration ensures that the electric arc's characteristics align with the desired welding outcomes.

    In summary, while GMAW might appear straightforward on the surface, diving into its depths reveals layers of complexities that demand a welder's full attention and understanding. With the right knowledge and practice, GMAW can be both an art and a science, producing welds of exceptional quality and strength.
"""
    ),
    Course(
        title: "FCAW PROCESS",
        subtitle: "Flux Core Welding",
        image: "Weld5",
        image2: "Background 7",
        image3: "Background 7",
        image4: "Background 7",
        image5: "",
        color: Color(#colorLiteral(red: 0.9721538424, green: 0.2151708901, blue: 0.5066347718, alpha: 1)),
        description: """
FCAW (Flux Core Arc Welding): A Comprehensive Overview

    Flux Core Arc Welding (FCAW) has been carving out its niche in the welding domain, particularly for its adaptability and versatility. Essentially sharing equipment with GMAW, FCAW is a unique process on its own, defined by the distinctive filler metals it employs.

    While GMAW utilizes solid filler metal, FCAW stands out by using a hollow wire filled with flux. This internal flux is somewhat reminiscent of the coating present on SMAW electrodes, acting as a shielding agent to protect the molten weld pool from atmospheric contaminants.

    FCAW wires are categorized into two primary types, each with its own applications and advantages:
""",
        description2: """
    1. Self-Shielded Flux Core Wires: Relying entirely on its flux for protection, this type doesn't require an external shielding gas. Primarily used for general-purpose welding, it's ideal for windy or drafty conditions where gas protection might be ineffective. Designed to work with Direct Current Electrode Negative (DCEN) or straight polarity, these wires are commonly available at home improvement and DIY stores. They are typically sold in smaller 1-pound spools, making them ideal for less intensive jobs and lower-output welding machines. A tip-off to recognizing these wires is in their designation: if you come across a wire labeled as E71T-Gxxxxx, it's a solid indicator of a self-shielded variety.
""",
        description3: """
    2. Dual Shield Flux Core Wires: As the name suggests, this type employs both its internal flux and an external shielding gas for protection. This dual protection results in cleaner welds with minimal spatter and slag. With their nomenclature often being E71T-1xxxxx, these wires are becoming increasingly popular, especially in structural steel applications. They require Direct Current Electrode Positive (DCRP) or reverse polarity and deliver the benefits of spray transfer without undesirable fallout. However, while the quality of welds with dual shield wires is exceptional, the initial setup costs are higher compared to SMAW. This economic consideration might influence decisions, especially in budget-conscious projects.
""",
        description4: """
    Regardless of the wire type, both GMAW and FCAW operate under a 'Constant Voltage' (CV) power source, a pivotal characteristic for achieving consistent weld quality. Some welding machines might label this as 'CP' (Constant Potential). It's crucial to understand that 'potential' here essentially refers to 'voltage.' Being aware of this terminological nuance ensures clarity when selecting or adjusting equipment settings.

    In summation, FCAW, with its flux-filled wires, offers a unique welding approach, balancing the convenience of equipment shared with GMAW and the adaptability of flux shielding. Whether opting for self-shielded or dual shield, understanding the intricacies of FCAW is crucial for obtaining optimal weld quality. As with any welding process, mastering FCAW requires both theoretical knowledge and hands-on practice.
"""
    ),
    Course(
        title: "GTAW PROCESS",
        subtitle: "Tig Welding",
        image: "Weld17",
        image2: "Background 7",
        image3: "Background 7",
        image4: "Background 7",
        image5: "",
        color: Color(#colorLiteral(red: 1, green: 0.3477956653, blue: 0.3974102139, alpha: 1)),
        description: """
GTAW (Gas Tungsten Arc Welding)

    Gas Tungsten Arc Welding (GTAW), also known as Tungsten Inert Gas (TIG) welding, is renowned for its precision, versatility, and ability to tackle a range of materials, from aluminum to stainless steel. Let's delve further into the technical aspects and nuances of GTAW.
""",
        description2: """
Power Source & Machine Type:

    GTAW operates with a Constant Current (CC) power source, much like the Shielded Metal Arc Welding (SMAW) process. This compatibility means that a machine suitable for SMAW can technically be converted to handle GTAW and vice versa. However, it's essential to check for the correct leads and connections, as not all GTAW machines come ready for stick welding. You'll typically find GTAW machines in two categories: Direct Current (DC) only or Alternating Current/Direct Current (AC/DC). Pure AC GTAW machines are exceptionally rare.
""",
        description3: """
Setting up for Mild Steel Welding:
When welding mild steel, ensuring the right setup is crucial:

    1. Tungsten Selection: Pure tungsten is not ideal for steel. A preferable choice is the red 2% thoriated tungsten. It's worth noting that thoriated tungsten contains radioactive thorium, so proper handling and disposal practices are essential.

    2. Tungsten Size & Preparation: Choose the tungsten size based on the material thickness. A pointed, pencil-like shape is recommended for steel welding. Ensure that grinding marks align with the tungsten's length to promote efficient electron flow during welding.

    3. Machine Configuration: The switches on most machines should be set to "remote" for both torch use and current adjustment. Ensure Direct Current Electrode Negative (DCEN) polarity is selected—except for aluminum and magnesium, which have different requirements.

    4. High Frequency: This feature aids arc initiation without physically touching the tungsten to the base metal, thus avoiding contamination. For steel, the high-frequency setting should be "start only".

    5. Shielding Gas: Pure argon, at a flow rate of approximately 25cfh (cubic feet per hour), is typically suitable.

Welding Aluminum:
Aluminum welding requires a shift in machine settings and filler selection:

    1. Tungsten: For radiographic quality welding, pure tungsten or the green band type is advised. However, for less critical applications, many welders might prefer thoriated tungsten due to its superior performance.

    2. Tungsten Preparation: Aluminum welding demands a balled tungsten tip. This can be achieved by using DCRP on a piece of copper or brass or by welding scrap aluminum in AC mode until the tungsten naturally balls up.

    3. High Frequency: Keep it in "continuous mode" for aluminum, as the AC cycle's constant shift between positive and negative currents requires high frequency to maintain a stable arc.

    4. Shielding Gas: Pure argon remains the preferred shielding gas, though helium can provide increased arc energy for welding thicker sections.

    5. Filler Selection: Aluminum fillers generally fall under the 4xxx (silicon-rich) and 5xxx (magnesium-rich) series. 4xxx fillers are versatile, even suitable for castings. The 5xxx series yields stronger welds on common base metals but struggles with castings.
""",
        description4: """
GTAW Steel Filler Metal:

    1. Filler Identification: ER70s-3 or ER70s-6 are the commonly used and recognized designations for GTAW steel filler rods. Note that GMAW filler wire composition is similar and can be used as an emergency substitute in GTAW.

    2. Filler Distinction: Many might wonder how GTAW filler wire differs from other wire types. While the rod's composition aligns with certain industry standards and certifications, understanding its underlying metallurgy and manufacture will offer insights into its distinctive features.

    In conclusion, while GTAW offers a plethora of benefits, from producing high-quality welds to versatility across materials, mastering the process requires a keen understanding of equipment, materials, and techniques. Whether it's setting up for mild steel or aluminum, each step and choice impacts the final weld quality. As always, continuous learning, practice, and adherence to safety guidelines are the cornerstones of successful welding.
"""
    ),
    Course(
        title: "FILLER METALS",
        subtitle: "Electrodes and Filler Metal",
        image: "Weld8",
        image2: "Background 7",
        image3: "Background 7",
        image4: "Background 7",
        image5: "",
        color: Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)),
        description: """
Filler Metals

    In welding, the fusion of base metals is facilitated by the introduction of filler metals. These metals, available in various compositions and forms, are vital in ensuring strong, durable welds that meet specific application requirements. Here, we explore the filler metals used in the four primary welding processes: SMAW, GMAW, FCAW, and GTAW.
""",
        description2: """
    1. SMAW (Shielded Metal Arc Welding):
    Also known as stick welding, SMAW uses a consumable electrode coated in flux.

    * Filler Metal: The filler metal is in the form of a stick electrode.
    * Composition: Electrodes are made from a core rod coated with a layer of flux. The core rod material corresponds to the weld's desired strength and composition.
    * Selection: Electrodes are categorized based on the AWS (American Welding Society) system. For instance, an E6013 electrode indicates a certain tensile strength, welding position, and flux composition.
    * Noteworthy Points: The flux coating generates a protective gas shield when heated, which protects the weld from contaminants. It also contributes slag, a layer on top of the weld bead that further shields the cooling weld from the atmosphere.
""",
        description3: """
    2. GMAW (Gas Metal Arc Welding):
    Commonly referred to as MIG (Metal Inert Gas) welding, GMAW utilizes a wire feed system.

    * Filler Metal: The filler is a continuous wire fed from a spool.
    * Composition: Wires can be made of various materials, including carbon steel, stainless steel, aluminum, and more. They are often solid but can have specialized cores.
    * Selection: Wires are also categorized using the AWS system, e.g., ER70S-6 for a specific type of carbon steel wire.
    * Noteworthy Points: An external shielding gas, such as pure CO₂ or a mixture of CO₂ and argon, protects the weld pool from contamination.

    3. FCAW (Flux-Cored Arc Welding):
    This process is a variation of GMAW, using a wire with a flux core.

    * Filler Metal: The filler metal is a tubular wire containing flux in its core.
    * Composition: Depending on the application, the flux core might contain various elements to enhance the weld's properties.
    * Selection: The choice between self-shielding and dual-shield (requiring external gas) wires is crucial. They're distinguished by their AWS classification, such as E71T-1 for a certain dual shield wire.
    * Noteworthy Points: Some FCAW wires don't need external shielding gas, as the flux provides the necessary protection. This can be advantageous in windy or outdoor environments where shielding gas might be blown away.
""",
        description4: """
    4. GTAW (Gas Tungsten Arc Welding):
    Often called TIG (Tungsten Inert Gas) welding, GTAW uses a non-consumable tungsten electrode.

    * Filler Metal: The filler is a rod introduced manually into the weld pool, separate from the electrode.
    * Composition: Filler rods can be made from various materials, mirroring those available for GMAW.
    * Selection: As with other processes, AWS classification aids in selection, like ER70s-2 for a type of steel rod.
    * Noteworthy Points: The purity and cleanliness of GTAW filler metals are crucial, given the process's precision and the absence of flux. Proper storage and handling to prevent contamination are essential.

    Filler metals play a pivotal role in the welding world, bridging base metals and ensuring the resultant weld's strength and durability. Each welding process demands specific filler metal forms and compositions, tailored to the unique requirements of the job. As welding technologies and applications evolve, so too will the range and specificity of filler metals, underscoring their enduring importance in the fabrication universe.
"""
    ),
    Course(
        title: "WELD INSPECTION",
        subtitle: "Visual Criteria",
        image: "Weld9",
        image2: "Background 7",
        image3: "Background 7",
        image4: "Background 7",
        image5: "",
        color: Color(#colorLiteral(red: 0.1446507573, green: 0.8378821015, blue: 0.9349924922, alpha: 1)),
        description: """
Weld Inspection: AWS Guidelines and Best Practices

    Ensuring the safety and reliability of welded structures is paramount. This necessitates stringent weld inspection protocols, as flaws or defects can compromise weld integrity. The American Welding Society (AWS) has established guidelines and best practices to standardize and elevate weld inspection processes. This exposition delves into the weld inspection landscape as defined by AWS.
""",
        description2: """
    1. AWS's Role in Weld Inspection:
    The American Welding Society (AWS) serves as a comprehensive resource and authority on welding. AWS's guidelines are recognized globally and offer detailed standards, certifications, and procedures for weld inspection.

    2. Certified Welding Inspector (CWI):
    AWS's CWI program is the gold standard for welding inspection.

    * Role: CWIs are responsible for evaluating the quality and conformity of welds to AWS codes.
    * Certification: Aspiring CWIs undergo rigorous training and examination, ensuring that they're equipped with deep knowledge about weld inspection techniques, documentation, and quality assurance.
""",
        description3: """
    3. Inspection Methods as Per AWS:

    * Visual Inspection: Often the first and most basic step, visual inspection involves examining welds for visible surface flaws, such as undercuts, cracks, and porosity. This method doesn't require specialized equipment apart from gauges to measure weld dimensions.
    * Destructive Testing: As the name implies, these tests destroy the weld sample. Examples include tensile tests, bend tests, and nick-break tests. They provide valuable insights into the weld's mechanical properties.
    * Non-Destructive Testing (NDT): NDT evaluates welds without causing damage. Common methods include:
        * Radiographic Testing (RT): Uses X-rays or gamma rays to detect internal weld defects. A film placed opposite the radiation source captures varying radiation levels, revealing imperfections.
        * Ultrasonic Testing (UT): Employs high-frequency sound waves to detect flaws. Reflections from defects or discontinuities are shown on a screen.
        * Magnetic Particle Testing (MT): Detects surface and near-surface flaws in ferromagnetic materials. The test piece is magnetized, and iron particles applied to it are attracted to defects.
        * Penetrant Testing (PT): Used for non-porous, non-ferrous materials. A liquid penetrant is applied to the surface and then removed, leaving behind indications in defects.
""",
        description4: """
    4. Documentation and Reporting:
    AWS guidelines emphasize thorough documentation throughout the inspection process.

    * Welding Procedure Specification (WPS): Details the welding process to be used, base metals, filler metals, and other essential parameters.
    * Procedure Qualification Record (PQR): Documents the testing results of a sample weld created following a WPS.
    * Welder Performance Qualification (WPQ): Certifies a welder's capability to produce welds meeting AWS standards.

    Weld inspection is an intricate dance of technology, expertise, and meticulous attention to detail. AWS's guidelines offer a structured framework, ensuring that welded structures adhere to the highest safety and quality standards. By following these guidelines and best practices, the welding community upholds the trust placed in them by countless industries worldwide.
"""
    )
]
