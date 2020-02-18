//
//  Game.swift
//  ApplePie
//
//  Created by India Doria on 2/17/20.
//  Copyright © 2020 India Doria. All rights reserved.
//

import Foundation

struct Game {
    var word: String
    var incorrectMovesRemaining: Int
    var guessedLetters: [Character]
    mutating func playerGuess(letter: Character) {
guessedLetters.append(letter)
        if !word.contains(letter) {
            incorrectMovesRemaining -= 1
        }
        
}
}
