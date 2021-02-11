//
//  Nav_Example_TestUITests.swift
//  Nav_Example_TestUITests
//
//  Created by David on 2/6/21.
//

import XCTest

class Nav_Example_TestUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
                                                                                
    }

    func testRecord() throws {
                      
        
        let app = XCUIApplication()
        app.buttons["Hello, World!"].tap()
        app.buttons["Hello, World #2!"].tap()
        app.buttons["Pop to root"].tap()
        
    }
    
    func test_using_text_strings() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.buttons["Hello, World!"].tap()
        
        let heading = app.staticTexts["Two"]
        XCTAssertEqual(heading.label , "Two") // heading label
    }
    
    func test_using_text_strings2() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.buttons["Hello, World!"].tap()
        
        let heading2 = app.staticTexts["Two"]
        XCTAssertEqual(heading2.label , "Two") // heading label
        
        app.buttons["Hello, World #2!"].tap()
        
        let heading3 = app.staticTexts["Three"]
        XCTAssertEqual(heading3.label , "Three") // heading label
    }
    
    func test_using_text_strings3() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.buttons["Hello, World!"].tap()
        
        let heading2 = app.staticTexts["Two"]
        XCTAssertEqual(heading2.label , "Two") // heading label
        
        app.buttons["Hello, World #2!"].tap()
        
        let heading3 = app.staticTexts["Three"]
        XCTAssertEqual(heading3.label , "Three") // heading label
        
        app.buttons["Pop to root"].tap()
        
        let heading1 = app.staticTexts["Tap-Root"]
        XCTAssertEqual(heading1.label , "Tap-Root") // heading label
    }
    
    func test_using_accessibilityID() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.buttons["button1"].tap()
        
        let heading2 = app.staticTexts["Two"]
        XCTAssertEqual(heading2.label , "Two") // heading label
        
        app.buttons["button2"].tap()
        
        let heading3 = app.staticTexts["Three"]
        XCTAssertEqual(heading3.label , "Three") // heading label
        
        app.buttons["button3"].tap()
        
        let heading1 = app.staticTexts["Tap-Root"]
        XCTAssertEqual(heading1.label , "Tap-Root") // heading label
    }
    
    func test_BingMe() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.buttons["bingme"].exists
        app.buttons["bell"].exists
        
        app.buttons["button1"].tap()
        
        let heading2 = app.staticTexts["Two"]
        XCTAssertEqual(heading2.label , "Two") // heading label
    }
}
