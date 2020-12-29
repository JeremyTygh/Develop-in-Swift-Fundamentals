//
//  Game.swift
//  Apple Pie Game
//
//  Created by Jeremy Tygh on 12/18/20.
//

import Foundation

struct Game {
    var word: String
    var incorrectMovesRemaining: Int
    var guessedLetters: [Character]
    
    var formattedWord: String {
        var guessedWord = ""
        for letter in word{
            if(guessedLetters.contains(letter)){
                guessedWord += "\(letter)"
            } else{
                guessedWord += "_"
            }
        }
        return guessedWord
    }
    
    mutating func playerGuessed(letter: Character){
        guessedLetters.append(letter)
        if !word.contains(letter){
            incorrectMovesRemaining -= 1
        }
    }
    
}
