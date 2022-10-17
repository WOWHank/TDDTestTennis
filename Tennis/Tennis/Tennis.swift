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
    
    private let dict = [
        0: "love",
        1: "fifteen",
        2: "thirty",
        3: "forty",
    ]
    
    func score() -> String {
        guard let left = dict[leftScore], let right = dict[rightScore] else { return "" }
        
        if rightScore == leftScore {
            
            if rightScore > 2 {
                return "deuce"
            }
            
            return "\(left) all"
        }
        
        if rightScore > 0 || leftScore > 0 {
            return "\(left) \(right)"
        }
        
        return "love all"
    }
    
    func leftPlayerScore() {
        leftScore += 1
    }
    
    func rightPlayerScore() {
        rightScore += 1
    }
}
