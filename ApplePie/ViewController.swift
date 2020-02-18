//
//  ViewController.swift
//  ApplePie
//
//  Created by India Doria on 2/17/20.
//  Copyright © 2020 India Doria. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var listOfWords = ["buccaneer", "swift", "boredom", "smile", "bug", "friend", "kylie"]
    let incorrectMovesAllowed = 7
    var totalWins = 0
    var totalLosses = 0
    var currentGame: Game!
    
    @IBOutlet var treeImageView: UIImageView!
    @IBOutlet var correctWordLabel: UILabel!
    @IBOutlet var scoreLabel: UILabel!
    @IBOutlet var letterButtons: [UIButton]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        newRound()
    }
    
    func newRound() {
        let newWord = listOfWords.removeFirst()
        currentGame = Game(word: newWord, incorrectMovesRemaining: incorrectMovesAllowed, guessedLetters: [])
        updateUI()
    }
    
    func updateUI() {
        var letters = [String]()
        for letter in currentGame.formattedWord {
            letters.append(String(letter))
        }
        let wordWithSpacing = letters.joined(separator: " ")
        correctWordLabel.text = wordWithSpacing
        scoreLabel.text = "Wins: \(totalWins), Losses: \(totalLosses)"
        treeImageView.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)")
    
    }
    @IBAction func buttonTapped(_ sender: UIButton) {
        sender.isEnabled = false
        let letterString = sender.title(for: .normal)!
        let letter = Character(letterString.lowercased() )
        currentGame.playerGuessed(letter: letter)
        updateUI()
    }
    

}

