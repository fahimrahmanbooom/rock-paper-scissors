//
//  gameLogic.swift
//  Rock-Paper-Scissors
//
//  Created by Fahim Rahman on 1/7/22.
//

import Foundation

struct GameLogic {
    
    let choices = ["1": "Rock", "2": "Paper", "3": "Scissors"]

    var playerChoice: String?
    var computerChoice: String?
    
    mutating func player() -> String {
        while true {
            print("\n\n*** Please, choose an option: ***")
            print("1. Rock")
            print("2. Paper")
            print("3. Scissors")
            print("\nYour choice: ", terminator: "")
            
            playerChoice = String(readLine()!)
            playerUser.addChoice(choice: playerChoice!)
            
            if !playerChoice!.isEmpty || Int(playerChoice!)! > 3 { break }
        }
        return self.playerChoice!
    }
    
    mutating func computer() -> String {
        computerChoice = String(Int.random(in: 1...3))
        playerComputer.addChoice(choice: computerChoice!)
        
        return self.computerChoice!
    }
    
    mutating func compareResult() {
        
        let playerChoice = player()
        let computerChoice = computer()
        
        if Int(playerChoice)! > 3 {
            print("Wrong Input!")
        }
        else {
            print("\n")
            print("\(playerUser.userName!) chose: \(choices[playerChoice]!)")
            print("\(playerComputer.userName!) chose: \(choices[computerChoice]!)\n")
        }
        
        if playerChoice == computerChoice {
            print("DRAW")
        }
        else if playerChoice == "1" && computerChoice == "2" {
            playerComputer.win()
            print("COMPUTER WINS")
        }
        else if playerChoice == "1" && computerChoice == "3" {
            playerUser.win()
            print("YOU WIN")
        }
        else if playerChoice == "2" && computerChoice == "1" {
            playerUser.win()
            print("YOU WIN")
        }
        else if playerChoice == "2" && computerChoice == "3" {
                playerComputer.win()
                print("COMPUTER WINS")
        }
        else if playerChoice == "3" && computerChoice == "1" {
            playerComputer.win()
            print("COMPUTER WINS")
        }
        else if playerChoice == "3" && computerChoice == "2" {
            playerUser.win()
            print("YOU WIN")
        }
        print("*******************\n")
    }
}
