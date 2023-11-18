//
//  GlossaryTip.swift
//  WeldHandbook
//
//  Created by JWSScott777 on 11/4/23.
//

import Foundation
import TipKit
struct GlossaryTip: Tip {
    var title: Text {
        Text("Use Search to locate a term")
            .italic()
            .font(.largeTitle)
            .foregroundStyle(.green)
    }
    var message: Text? {
        Text("After, scroll through the list to explore new topics")
    }
    var image: Image? {
        Image(.weldLogo12)
    }
}
