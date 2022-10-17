//
//  Tennis.swift
//  Tennis
//
//  Created by Hank on 2022/10/13.
//

import Foundation

class Tennis {
    private var leftScore = 0
    private var rightScore = 0
    
    private var leftPlayerName = ""
    
    private let dict = [
        0: "love",
        1: "fifteen",
        2: "thirty",
        3: "forty",
    ]
    
    init(leftPlayerName: String) {
        self.leftPlayerName = leftPlayerName
    }
    
    func score() -> String {
        
        if isScoreDifferent() {
            
            if leftScore > 3 && abs(leftScore - rightScore) == 1 {
                return "\(leftPlayerName) adv"
            }
            
            return scoreLookup()
        }
        
        if rightScore > 2 {
            return "deuce"
        }
        
        return scoreAll()
    }
    
    func scoreLookup() -> String {
        guard let left = dict[leftScore], let right = dict[rightScore] else { return "" }
        
        return "\(left) \(right)"
    }
    
    func isScoreDifferent() -> Bool {
        return rightScore != leftScore
    }
    
    func scoreAll() -> String {
        guard let score = dict[leftScore] else { return "" }
        
        return "\(score) all"
    }
    
    func leftPlayerScore() {
        leftScore += 1
    }
    
    func rightPlayerScore() {
        rightScore += 1
    }
}
