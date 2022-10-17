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
    private var rightPlayerName = ""
    
    private let dict = [
        0: "love",
        1: "fifteen",
        2: "thirty",
        3: "forty",
    ]
    
    init(leftPlayerName: String, rightPlayerName: String) {
        self.leftPlayerName = leftPlayerName
        self.rightPlayerName = rightPlayerName
    }
    
    func score() -> String {
        
        if isScoreDifferent() {
            if isReady() {
                if isAdv() {
                    return scoreAdv()
                }
                
                return scoreWin()
            }
            
            return scoreLookup()
        }
        
        if isDeuce() {
            return scoreDeuce()
        }
        
        return scoreAll()
    }
    
    private func scoreDeuce() -> String {
        return "deuce"
    }
    
    private func isDeuce() -> Bool {
        return leftScore >= 3
    }
    
    private func scoreWin() -> String {
        return "\(advPlayer()) win"
    }
    
    private func scoreAdv() -> String {
        return "\(advPlayer()) adv"
    }
    
    private func isAdv() -> Bool {
        return abs(leftScore - rightScore) == 1
    }
    
    private func isReady() -> Bool {
        return leftScore > 3 || rightScore > 3
    }
    
    private func advPlayer() -> String {
        return (leftScore > 3) ? leftPlayerName : rightPlayerName
    }
    
    private func scoreLookup() -> String {
        guard let left = dict[leftScore], let right = dict[rightScore] else { return "" }
        
        return "\(left) \(right)"
    }
    
    private func isScoreDifferent() -> Bool {
        return rightScore != leftScore
    }
    
    private func scoreAll() -> String {
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
