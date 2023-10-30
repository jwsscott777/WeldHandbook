//
//  CreateToDoTip.swift
//  WeldHandbook
//
//  Created by JWSScott777 on 10/28/23.
//

import Foundation
import TipKit

struct CreateToDoTip: Tip {
    var title: Text {
        Text("Create a weld position")
            .italic()
            .font(.title)
            .foregroundStyle(.green)
    }
    
    var message: Text? {
        Text("Tap on the plus button to create a weld position to track")
    }

    var image: Image? {
        Image(.weldLogo)
    }
}
