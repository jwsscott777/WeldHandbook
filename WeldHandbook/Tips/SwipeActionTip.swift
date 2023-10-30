//
//  SwipeActionTip.swift
//  WeldHandbook
//
//  Created by JWSScott777 on 10/28/23.
//

import Foundation
import TipKit

struct SwipeActionTip: Tip {
    static let pressActionEvent = Event(id: "pressActionEvent")

    var options: [TipOption] {
        [
            Tips.MaxDisplayCount(1)
        ]
    }

    var title: Text {
        Text("Ready to Delete?")
            .italic()
            .font(.title)
            .foregroundStyle(.red)
    }

    var message: Text? {
        Text("Press and hold on the task to delete when you are ready to trash it")
    }

    var image: Image? {
        Image(systemName: "trash")
    }

    var rules: [Rule] {
        [
            #Rule(Self.pressActionEvent) { event in
                event.donations.count >= 3
            }
        ]
    }

}
