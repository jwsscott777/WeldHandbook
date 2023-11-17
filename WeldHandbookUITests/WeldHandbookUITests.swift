//
//  WeldHandbookUITests.swift
//  WeldHandbookUITests
//
//  Created by JWSScott777 on 11/16/23.
//

import XCTest

final class WeldHandbookUITests: XCTestCase {
    var app: XCUIApplication!
    override func setUpWithError() throws {
        continueAfterFailure = false

        app = XCUIApplication()
        app.launch()
    }

    func testAppStartsWithNavigationBar() throws {
        XCTAssert(app.navigationBars.element.exists, "There should be a title")
    }
}
