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
    
    func rightPlayerScore(times: Int) {
        for _ in 0..<times {
            tennis.rightPlayerScore()
        }
    }
    
    func testScoreDeuce() {
        rightPlayerScore(times: 3)
        leftPlayerScore(times: 3)
        
        XCTAssertEqual(tennis.score(), "deuce")
    }
    
    func testScoreThirtyAll() {
        rightPlayerScore(times: 2)
        leftPlayerScore(times: 2)
        
        XCTAssertEqual(tennis.score(), "thirty all")
    }
    
    func testScoreFifteenAll() {
        rightPlayerScore(times: 1)
        leftPlayerScore(times: 1)
        
        XCTAssertEqual(tennis.score(), "fifteen all")
    }
    
    func testScoreLoveForty() {
        rightPlayerScore(times: 3)
        
        XCTAssertEqual(tennis.score(), "love forty")
    }
    
    func testScoreLoveThirty() {
        rightPlayerScore(times: 2)
        
        XCTAssertEqual(tennis.score(), "love thirty")
    }
    
    func testScoreLoveFifteen() {
        rightPlayerScore(times: 1)
        
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
