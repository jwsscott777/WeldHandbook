//
//  List.swift
//  WeldHandbook
//
//  Created by JWSScott777 on 10/5/23.
//

import SwiftUI

struct ListModel: Identifiable {
    var id = UUID()
    var image: String
    var image2: String
    var title: String
    var description: String
}

var lists = [
    ListModel(image: "list.bullet.clipboard", image2: "AC", title: "Alternating Current",  description: """
    Alternating current (AC) in welding refers to the swift change in the flow direction of the electric current. This shift, from reverse to straight polarity, happens 60 times every second, or at 60 hertz. In essence, this means that the direction reverses every 1/120 of a second. This change happens so rapidly that it's typically imperceptible to the human eye. To illustrate, if we were to slow down these cycles, lights powered by AC in our workspaces would appear to flicker on and off. AC plays a crucial role in Tungsten Inert Gas (TIG) welding of aluminum, enabling a balance between cleaning the metal surface (using Direct Current Reverse Polarity or DCRP) and achieving penetration (using Direct Current Straight Polarity or DCSP). Additionally, AC is utilized in Shielded Metal Arc Welding (SMAW) to address "arc blow" issues and for diverse general welding tasks.
"""),
    ListModel(image: "list.bullet.clipboard", image2: "Planes21", title: "AC Frequency",  description: """
        In the realm of welding, particularly within the Gas Tungsten Arc Welding (GTAW) or Tungsten Inert Gas (TIG) process, "AC Frequency" pertains to the number of cycles per second that the alternating current (AC) makes as it switches from positive to negative polarity. Measured in Hertz (Hz), the standard AC frequency for mains electricity in many countries is 60 Hz, meaning the current changes direction 60 times per second. However, modern welding machines equipped with inverter technology can adjust this frequency, typically offering a range from 20 Hz to 250 Hz or even higher, allowing welders to fine-tune the welding arc's characteristics for specific applications.

        The ability to control AC frequency in welding is particularly advantageous when working with metals like aluminum. Higher frequencies can provide a more focused and stable arc, which is beneficial for welding thin materials or when a precise bead is required. On the other hand, lower frequencies can produce a broader arc, increasing cleaning action on the material's surface, which is useful for more contaminated or oxidized surfaces. By manipulating the AC frequency, welders can optimize arc stability, penetration profiles, and cleaning action, leading to enhanced weld quality and appearance.
    """),
    ListModel(image: "list.bullet.clipboard", image2: "Wallpaper 3", title: "Acetylene",  description: """
    Acetylene gas is a colorless, highly flammable hydrocarbon gas with the chemical formula C2H2. It is characterized by a distinct, garlic-like odor and is primarily used in welding and cutting processes because of its ability to produce an extremely hot flame (over 3,000°C or 5,432°F) when combined with oxygen.
"""),
    ListModel(image: "list.bullet.clipboard", image2: "Background 10", title: "Alloy",  description: """
    An alloy is a metallic substance formed by combining two or more different metal elements to enhance or impart specific properties not found in their individual metals, such as increased strength, corrosion resistance, or ductility. The resulting mixture exhibits characteristics distinct from its constituent elements.
"""),
    ListModel(image: "list.bullet.clipboard", image2: "Amp", title: "Ampere",  description: """
    In welding terms, an ampere (often shortened to "amp") refers to the unit of electric current flowing through the welding electrode. It measures the intensity of the electric arc and plays a critical role in determining the heat input, penetration depth, and overall quality of the weld. Adjusting the amperage allows welders to control the weld's characteristics to suit different materials and joint requirements.
"""),
    ListModel(image: "list.bullet.clipboard", image2: "Polygon18", title: "Annealing",  description: """
    Annealing refers to the controlled heating of a metal or weldment to a specific temperature followed by a slow cooling process. This heat treatment is done to relieve internal stresses, increase softness, improve ductility, and enhance the metal's workability. After welding, annealing can help in restoring the metal's original properties and mitigating the effects of the welding heat and thermal stresses.
"""),
    ListModel(image: "list.bullet.clipboard", image2: "Anode", title: "Anode", description: """
    An anode is the positive electrode in the electrical circuit. During the welding process, electrons flow from the negative electrode (cathode) to the anode. In certain welding processes, the workpiece can act as the anode, while in others, the welding electrode might serve this role. The region of the anode often experiences higher heat, which affects the weld's characteristics and behavior.
"""),
    ListModel(image: "list.bullet.clipboard", image2: "Water32", title: "Arc Blow",  description: """
    In welding, "Arc Blow" refers to the deflection or deviation of the welding arc from its intended path or direction. This phenomenon occurs primarily in manual arc welding, especially when using high currents. The welding arc, instead of being steady and centralized over the joint, tends to wander or blow to one side. It's caused by magnetic forces generated by the flow of the welding current. The movement of these magnetic fields can lead to the arc being pushed to the sides of the joint or even completely out of the weld joint.

    The consequences of arc blow can be detrimental to the weld quality. As the arc deviates from its intended path, it can result in poor fusion, incomplete penetration, and the formation of weld defects. Factors that influence arc blow include the welding current magnitude, the distance between the electrode and the workpiece, the positioning of cables, and the magnetic properties of the base metal. To counteract arc blow, welders may change the current path, use alternate electrode angles, or employ magnetic arc blow eliminators. Proper setup and technique are essential to mitigate the effects of arc blow and ensure consistent, high-quality welds.
"""),
    ListModel(image: "list.bullet.clipboard", image2: "Backing", title: "Backing",  description: """
    This refers to a material which is placed on the root side of a weld to help control the penetration. An example of this would be on a groove weld to which there is not sufficient skill or requirement to have an open root scenario and this would be one of the essential variables. On a prequalified welding procedure, there will be information relating to the type of joint and process used to indicate which bevel would be permitted as well as the root opening. This information is different than what one would find on an open root joint. What does all this mean? Essentially, you would place a piece of material - such as: 1/4" X 1" X 9" flat bar - along the back or root side of the two members being welded by tack welding it to the root side. This materiial, along with the weldment, would then be welded from the face side of the joint. When this joint is to be destructively tested, the backing material must be removed before the test specimens can be tested and this brings many men to tears because of the grinding required.
"""),
    ListModel(image: "list.bullet.clipboard", image2: "Butt", title: "Butt Joint",  description: """
    "Butt Joint" refers to the juncture where the edges of two metal pieces are aligned and positioned end-to-end, directly adjacent to one another, without any overlap. This configuration creates a straight linear connection, resembling how the end of one board butts up against another in carpentry, hence the name. The primary purpose of a butt joint is to join two sections together in the same plane, essentially extending the original piece. It is among the most basic and commonly used joints in welding, suitable for materials of various thicknesses.

    When constructing a butt joint, it's imperative that the edges of the materials to be joined are prepared and cleaned adequately to ensure proper fusion and a strong bond. Depending on the thickness of the materials involved, the edges might be beveled or given a particular shape to allow for better penetration and flow of the filler metal. This preparation is essential, as the strength of a butt-welded joint is directly related to the degree of penetration achieved during the welding process. Properly executed butt joints can achieve strength comparable to the base metal, making them an essential technique in numerous fabrication and construction applications.
"""),
    ListModel(image: "list.bullet.clipboard", image2: "Butter", title: "Buttering",  description: """
    In the realm of welding, "buttering" refers to the process of pre-laying weld metal onto the surface of one or both components before executing the final weld. This pre-applied weld metal, or butter, serves various purposes, including ensuring compatibility between base materials, adjusting chemical composition, or ensuring a specific metallurgical property in the subsequent welding joint. Buttering does not aim to create a joint but prepares the workpiece for a subsequent full-penetration welding operation.

    The buttering process is particularly advantageous when dealing with dissimilar materials or when a base material has challenging weldability characteristics. By buttering with an intermediate or more weldable material, the welder can mitigate potential issues like cracking or undesirable metallurgical changes in the subsequent weld. Additionally, buttering can be used to build up a worn or corroded surface to its original dimension before the final welding. It's crucial that the buttered layer has the desired properties and offers a suitable platform for the final weld to ensure the integrity and longevity of the joint.
"""),
    ListModel(image: "list.bullet.clipboard", image2: "Carbon", title: "Carbon",  description: """
    In the context of welding, "carbon" plays a crucial role in determining the characteristics and weldability of metals, particularly steels. Carbon, a non-metallic element, is present in varying amounts in different types of steels and greatly influences their mechanical properties, hardness, and tensile strength. As the carbon content of steel increases, the steel becomes harder and stronger when quenched, but it also becomes less ductile and more challenging to weld. High carbon content in steel can lead to issues like increased brittleness, reduced weldability, and a greater likelihood of defects such as cracking.

    When welding, the carbon content of the materials being joined, as well as the filler metals, must be considered. High carbon steels, for instance, require careful preheat and post-weld heat treatment (PWHT) to mitigate the risks of cracking and stress. Welding processes may also introduce carbon into the weld, especially if the welding environment isn't adequately controlled. Excessive carbon in the weld can reduce its ductility and toughness, leading to potential failures in service. Therefore, understanding and managing the carbon content is essential for producing robust and durable welds.
"""),
    ListModel(image: "list.bullet.clipboard", image2: "Castings", title: "Castings",  description: """
    In welding terminology, "castings" refer to metal parts that have been formed by pouring molten metal into a mold where it solidifies upon cooling. The process by which these parts are created is called casting. Cast parts can range from intricate jewelry pieces to massive engine blocks and machinery components. Cast metals have a unique microstructure due to their cooling process, which starts from the exterior of the mold towards the interior, resulting in a gradient of grain structures. The nature of the casting process means that cast parts can have inclusions, porosity, and other defects not typically found in wrought materials.

    When it comes to welding castings, there are particular challenges to consider. The unique microstructure and the possibility of inclusions and defects can make cast metals more susceptible to cracking during the welding process. Furthermore, the heating and cooling cycles during welding can induce thermal stresses in the already complex structure of the casting. As a result, specific measures, such as preheating, using compatible filler materials, and sometimes post-weld heat treatments, might be necessary to ensure a successful weld on cast materials. Proper welding techniques and procedures are paramount to maintaining the integrity and function of the welded casting.
"""),
    ListModel(image: "list.bullet.clipboard", image2: "Crack", title: "Crack",  description: """
    In the context of welding, a "crack" refers to an unintended and often detrimental discontinuity or fracture in the welded material, typically manifesting as a linear separation in the weld metal, heat-affected zone, or base metal. Cracks can severely undermine the structural integrity and durability of the welded joint. They may arise due to various factors, including stress, inadequate welding techniques, material incompatibilities, or unfavorable environmental conditions during the welding process.

    Cracking is a grave concern for welders because it can lead to catastrophic failures when the component is under load or operational stresses. Different types of cracks, such as hot cracks, cold cracks, root cracks, or toe cracks, may form at various stages of the welding process and in different parts of the weld joint. To prevent or minimize the occurrence of cracks, it's crucial to understand their underlying causes and apply appropriate welding procedures, material selection, and post-weld treatments. Regular inspection and testing of welded joints are essential to detect cracks and assess the overall quality of the weld.
"""),
    ListModel(image: "list.bullet.clipboard", image2: "Direct Current", title: "Direct Current",  description: """
    In welding terms, "Direct Current" (DC) refers to the unidirectional flow of electric charge, maintaining a consistent polarity throughout the welding process. Unlike alternating current (AC) where the polarity alternates periodically, DC ensures that the electric charge flows steadily in one direction, either from the electrode to the workpiece or vice versa. This consistent directionality provides welders with a stable arc, reducing spatter and offering greater control over the weld pool, making it an ideal choice for many welding applications.

    There are two main types of direct current used in welding: Direct Current Electrode Positive (DCEP) and Direct Current Electrode Negative (DCEN). DCEP, also known as reverse polarity, involves the electrode being the positive terminal, which results in deeper penetration of the weld. On the other hand, DCEN, or straight polarity, has the electrode as the negative terminal, leading to faster melting of the electrode and less penetration. The choice between DCEP and DCEN often depends on the specific welding process, type of metal, and desired weld characteristics.
"""),
    ListModel(image: "list.bullet.clipboard", image2: "Defect", title: "Defect",  description: """
    In welding terminology, a "defect" refers to any anomaly or inconsistency within a weld or between weld and base metals that compromises the integrity, strength, or intended function of the welded joint. Defects can arise from a multitude of factors, including incorrect welding techniques, inadequate preparation of materials, improper welding parameters, or the use of contaminated materials. The presence of defects in a weld can lead to reduced performance, premature failure, and potential safety hazards, making their identification and rectification crucial in maintaining the quality of a welded structure.

    Defects in welding can manifest in various forms, such as porosity (tiny gas pockets within the weld), inclusions (foreign materials embedded in the weld), cracks, undercutting (a groove melted into the base metal adjacent to the weld toe or weld root and left unfilled by weld metal), and incomplete fusion (areas where the weld metal has not thoroughly fused with the base metal or preceding weld bead). While some defects might be visible to the naked eye, others might require non-destructive testing methods like radiography, ultrasonics, or magnetic particle inspection for detection. Addressing defects often involves the removal of the defective portion and re-welding, ensuring adherence to proper welding practices and parameters.
"""),
    ListModel(image: "list.bullet.clipboard", image2: "Deposition Rate", title: "Deposition Rate",  description: """
    In the context of welding, the "deposition rate" refers to the amount of filler material (often in the form of wire or electrode) that is melted and deposited into the weld joint per unit of time. It is typically measured in pounds per hour (lbs/hr) or kilograms per hour (kg/hr) and serves as an essential parameter in determining the efficiency and productivity of a welding process. A higher deposition rate indicates that more material is being added to the weld in a shorter amount of time, which can lead to faster welding speeds and reduced production times, assuming quality is maintained.

    The deposition rate can vary based on several factors, including the type of welding process being used, the specific equipment settings, and the skill of the welder. For instance, processes like submerged arc welding (SAW) and flux-cored arc welding (FCAW) typically have higher deposition rates than gas tungsten arc welding (GTAW). It's essential to find a balance between achieving a high deposition rate and ensuring the quality of the weld. Too high a rate can sometimes lead to defects or poor penetration, whereas a rate that's too low can increase welding costs and production time. Therefore, understanding and optimizing the deposition rate is crucial for welders and industries aiming to enhance efficiency without compromising on weld quality.
"""),
    ListModel(image: "list.bullet.clipboard", image2: "Discontinuity", title: "Discontinuity",  description: """
"""),
    ListModel(image: "list.bullet.clipboard", image2: "Ductility", title: "Ductility",  description: """
"""),
    ListModel(image: "list.bullet.clipboard", image2: "Duty Cycle", title: "Duty Cycle",  description: """
"""),
    ListModel(image: "list.bullet.clipboard", image2: "Electrode", title: "Electrode",  description: """
"""),
    ListModel(image: "list.bullet.clipboard", image2: "Element", title: "Element",  description: """
"""),
    ListModel(image: "list.bullet.clipboard", image2: "Face", title: "Face of Weld",  description: """
"""),
    ListModel(image: "list.bullet.clipboard", image2: "Ferrous", title: "Ferrous",  description: """
"""),
    ListModel(image: "list.bullet.clipboard", image2: "Filler", title: "Filler Metal",  description: """
"""),
    ListModel(image: "list.bullet.clipboard", image2: "Fillet", title: "Fillet Weld",  description: """
"""),
    ListModel(image: "list.bullet.clipboard", image2: "Fusion", title: "Fusion",  description: """
"""),
    ListModel(image: "list.bullet.clipboard", image2: "GrooveAngle", title: "Groove Angle",  description: """
"""),
    ListModel(image: "list.bullet.clipboard", image2: "GrooveWeld", title: "Groove Weld",  description: """
"""),
    ListModel(image: "list.bullet.clipboard", image2: "Heat", title: "Heat Affected Zone",  description: """
"""),
    ListModel(image: "list.bullet.clipboard", image2: "HotShortness", title: "Hot Shortness",  description: """
"""),
    ListModel(image: "list.bullet.clipboard", image2: "Inclusions", title: "Inclusions",  description: """
"""),
    ListModel(image: "list.bullet.clipboard", image2: "Inert", title: "Inert Gas",  description: """
"""),
    ListModel(image: "list.bullet.clipboard", image2: "InterPass", title: "Inter-pass Temperature",  description: """
"""),
    ListModel(image: "list.bullet.clipboard", image2: "Land", title: "Land",  description: """
"""),
    ListModel(image: "list.bullet.clipboard", image2: "AC", title: "Lap Joint",  description: """
"""),
    ListModel(image: "list.bullet.clipboard", image2: "AC", title: "Ohm",  description: """
"""),
    ListModel(image: "list.bullet.clipboard", image2: "AC", title: "Oxidizing",  description: """
"""),
    ListModel(image: "list.bullet.clipboard", image2: "AC", title: "Oxygen",  description: """
"""),
    ListModel(image: "list.bullet.clipboard", image2: "AC", title: "Plasma",  description: """
"""),
    ListModel(image: "list.bullet.clipboard", image2: "AC", title: "Polarity",  description: """
"""),
    ListModel(image: "list.bullet.clipboard", image2: "AC", title: "Procedure Qualification Report",  description: """
"""),
    ListModel(image: "list.bullet.clipboard", image2: "AC", title: "Radiograph",  description: """
"""),
    ListModel(image: "list.bullet.clipboard", image2: "AC", title: "Rectifier",  description: """
"""),
    ListModel(image: "list.bullet.clipboard", image2: "AC", title: "Reinforcement",  description: """
"""),
    ListModel(image: "list.bullet.clipboard", image2: "AC", title: "Stringer Bead",  description: """
"""),
    ListModel(image: "list.bullet.clipboard", image2: "AC", title: "Tensile Strength",  description: """
"""),
    ListModel(image: "list.bullet.clipboard", image2: "AC", title: "Undercut",  description: """
"""),
    ListModel(image: "list.bullet.clipboard", image2: "AC", title: "Watt",  description: """
"""),
    ListModel(image: "list.bullet.clipboard", image2: "AC", title: "Weave Bead",  description: """
"""),
    ListModel(image: "list.bullet.clipboard", image2: "AC", title: "Welding Positions",  description: """
"""),
    ListModel(image: "list.bullet.clipboard", image2: "AC", title: "Welding Procedure Specification",  description: """
"""),
]
