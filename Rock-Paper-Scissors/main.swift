//
//  main.swift
//  Rock-Paper-Scissors
//
//  Created by Fahim Rahman on 28/6/22.
//

import Foundation

print("""
**********************************
*   ROCK ** PAPER ** SCISSORS    *
**********************************
""")

print("\n\nWelcome to the Rock-Paper-Scissors game!\n")

var playerUser = Player()
var playerComputer = Player()

while true {
    print("Please, give me your name: ", terminator: "")
    playerUser.userName = readLine()
    if !playerUser.userName!.isEmpty { break }
}

playerComputer.userName = "Potato PC"


while true {
    print("Do you want to keep playing? (y/n) :", terminator: "")
    let userResponse = readLine()
    if userResponse != "y" && userResponse != "n" {
        print("\nIncorrect answer...")
        continue
    }
    if userResponse == "n" {
        break
    }
    else if userResponse == "y" {
        var gameLogic = GameLogic()
        gameLogic.compareResult()
    }
}


print("\n\n******** FINAL SCORE ********")
print("\(playerUser.userName!): \(playerUser.getScore() ?? 0)")
print("\(playerComputer.userName!): \(playerComputer.getScore() ?? 0)")
print("*****************************")
if playerUser.getScore() ?? 0 > playerComputer.getScore() ?? 0 {
    print("\n>>> \(playerUser.userName!) WIN !!!")
}
if playerUser.getScore() ?? 0 < playerComputer.getScore() ?? 0 {
    print("\n>>> \(playerUser.userName!) LOSE !!!")
}
if playerUser.getScore() ?? 0 == playerComputer.getScore() ?? 0 {
    print("\n>>> IT'S A DRAW")
}

print("\n\n")
