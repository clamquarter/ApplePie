//
//  Game.swift
//  ApplePie
//
//  Created by India Doria on 2/17/20.
//  Copyright © 2020 India Doria. All rights reserved.
//

import Foundation

struct Game {
    var formattedWord: String {
        var guessedWord = ""
        for letter in word {
            if guessedLetters.contains(letter) {
                guessedWord += "\(letter)"
            } else {
                guessedWord += "_"
            }
        }
        return guessedWord
    }
    var word: String
    var incorrectMovesRemaining: Int
    var guessedLetters: [Character]
    mutating func playerGuessed(letter: Character) {
guessedLetters.append(letter)
        if !word.contains(letter) {
            incorrectMovesRemaining -= 1
        }
        
}
    
}
