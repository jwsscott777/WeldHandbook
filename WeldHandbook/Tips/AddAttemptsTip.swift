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
        Text("Select an attempt from above and input result before clicking add button. Also, you can add an image from your library as well.")
    }
    var image: Image? {
        Image(.weldLogo12)
    }
}
