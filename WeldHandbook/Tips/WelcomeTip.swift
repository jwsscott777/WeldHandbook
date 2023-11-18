//
//  WelcomeTip.swift
//  WeldHandbook
//
//  Created by JWSScott777 on 10/29/23.
//

import Foundation
import TipKit
struct WelcomeTip: Tip {
    var title: Text {
        Text("Welcome to the Weld Handbook")
            .italic()
            .font(.largeTitle)
    }
    var message: Text? {
        Text("Tap on the various cards to reveal more content.\n Also check out the bottom tab bar to access other features")
    }
    var image: Image? {
        Image(.weldLogo12)
    }
}
