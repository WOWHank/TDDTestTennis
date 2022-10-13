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
    
    func rughtPlayerScore(times: Int) {
        for _ in 0..<times {
            tennis.rightPlayerScore()
        }
    }
    
    func testScoreLoveForty() {
        rughtPlayerScore(times: 3)
        
        XCTAssertEqual(tennis.score(), "love forty")
    }
    
    func testScoreLoveThirty() {
        rughtPlayerScore(times: 2)
        
        XCTAssertEqual(tennis.score(), "love thirty")
    }
    
    func testScoreLoveFifteen() {
        rughtPlayerScore(times: 1)
        
        XCTAssertEqual(tennis.score(), "love fifteen")
    }
    
    func leftPlayerScore(times: Int) {
        for _ in 0..<times {
            tennis.leftPlayerScore()
        }
    }
    
    func testFortyLove() {
        leftPlayerScore(times: 3)
        
        XCTAssertEqual(tennis.score(), "forty love")
    }
    
    func testThirtyLove() {
        leftPlayerScore(times: 2)
        
        XCTAssertEqual(tennis.score(), "thirty love")
    }
    
    func testScoreFifteenLove() {
        leftPlayerScore(times: 1)
        
        XCTAssertEqual(tennis.score(), "fifteen love")
    }
    
    func testScoreLoveAll() {
        XCTAssertEqual(tennis.score(), "love all")
    }
}
