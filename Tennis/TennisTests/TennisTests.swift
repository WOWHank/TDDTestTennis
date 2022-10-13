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

    func testScoreLoveAll() {
        let score = tennis.score()
        
        XCTAssertEqual(score, "love all")
    }
}
