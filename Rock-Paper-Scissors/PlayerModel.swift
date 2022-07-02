//
//  PlayerModel.swift
//  Rock-Paper-Scissors
//
//  Created by Fahim Rahman on 28/6/22.
//

import Foundation

struct Player {
    
    var score: Int? = 0
    var userName: String?
    var choice: String?
    
    mutating func win() {
        self.score! += 1
    }
    
    mutating func getScore() -> Int? {
        return self.score
    }
    
    mutating func addChoice(choice: String) {
        return self.choice = choice
    }
}
