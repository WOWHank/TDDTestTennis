//
//  Tennis.swift
//  Tennis
//
//  Created by Hank on 2022/10/13.
//

import Foundation

class Tennis {
    private var leftScore = 0
    
    func score() -> String {
        if leftScore == 1 {
            return "fifteen love"
        }
        
        return "love all"
    }
    
    func leftPlayerScore() {
        leftScore += 1
    }
    
}
