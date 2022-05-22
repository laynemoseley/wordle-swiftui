//
//  GameState.swift
//  wordle-swiftui
//
//  Created by Layne Moseley on 5/20/22.
//

import Foundation

struct GameState: Codable {
    let guesses: [String]
    let targetWord: String // maybe not needed?
    let stats: PlayerStats
}

struct PlayerStats: Codable {
    let wins: Int
    let losses: Int
    let streak: Int
}
