//
//  TennisTests.swift
//  TennisTests
//
//  Created by Hank on 2022/10/13.
//

import XCTest
@testable import Tennis

class TennisTests: XCTestCase {

    var tennis: Tennis!
    
    override func setUpWithError() throws {
        tennis = Tennis()
    }

    override func tearDownWithError() throws {
        tennis = nil
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
