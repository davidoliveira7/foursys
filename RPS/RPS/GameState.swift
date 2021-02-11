//
//  GameState.swift
//  RPS
//
//  Created by David Lima de Oliveira on 09/02/21.
//

import Foundation

enum GameState {
    case start
    case win
    case lose
    case draw
    
    var status: String {
        switch self {
        case .start:
            return "Rock, Paper, Scissors?"
        case .win:
            return "You Won!"
        case .lose:
            return "You Lost!"
        case .draw:
            return "It's a Draw!"
        }
    }
}
let computerSing = randomSign()
let mySign = Sign.scissors

let gameState = mySign.gameState(against: computerSing)

