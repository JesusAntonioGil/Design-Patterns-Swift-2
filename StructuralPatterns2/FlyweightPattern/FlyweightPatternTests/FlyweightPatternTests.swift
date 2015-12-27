//
//  FlyweightPatternTests.swift
//  FlyweightPatternTests
//
//  Created by Jesus Antonio Gil on 21/12/15.
//  Copyright © 2015 Jesus Antonio Gil. All rights reserved.
//

import XCTest
@testable import FlyweightPattern


class FlyweightPatternTests: XCTestCase {
    
    override func setUp()
    {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown()
    {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample()
    {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample()
    {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
    //MY TESTS
    
    //TEST without applying the pattern
    
    func testSimpleScreenFilling_noFlyweight()
    {
        //This is an example of a performance test case.
        //It is executed 10 tymes by default to get an average
        
        self.measureBlock { () -> Void in
            let noPattern = NoPattern()
            noPattern.run()
        }
    }
    
    //TEST applying the pattern
    
    func testSimpleScreenFilling_withFlyweightDic()
    {
        self.measureBlock { () -> Void in
            let withPattern = WithPattern()
            withPattern.run()
        }
    }
}
