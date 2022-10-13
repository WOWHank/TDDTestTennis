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
        guard let left = dict[leftScore] else { return "" }
        
        if rightScore == 1 {
            return "love fifteen"
        }
        
        if leftScore == 1 {
            return "\(left) love"
        }
        else if leftScore == 2 {
            return "\(left) love"
        }
        else if leftScore == 3 {
            return "\(left) love"
        }
        
        return "\(left) all"
    }
    
    func leftPlayerScore() {
        leftScore += 1
    }
    
    func rightPlayerScore() {
        rightScore += 1
    }
}
