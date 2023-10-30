//
//  AddAttemptsTip.swift
//  WeldHandbook
//
//  Created by JWSScott777 on 10/29/23.
//

import Foundation
import TipKit

struct AddAttemptsTip: Tip {
    var title: Text {
        Text("Add passed attempts here")
            .italic()
            .font(.title)
            .foregroundStyle(.purple)
    }

    var message: Text? {
        Text("Type the name of position before tapping the add button")
    }

    var image: Image? {
        Image(.weldLogo)
    }
}
