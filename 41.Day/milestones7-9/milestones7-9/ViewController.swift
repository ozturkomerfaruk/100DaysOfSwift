//
//  ViewController.swift
//  milestones7-9
//
//  Created by Ömer Faruk Öztürk on 25.12.2022.
//

import UIKit

final class ViewController: UIViewController {
    
    private var wordList = [String]()
    let word = "RHYTHM"
    var usedLetters = ["R", "T"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fetchWords()
        for i in wordList {
            print(i)
        }
        
        print(letterGame(word: word, userLetters: usedLetters))
    }
    
    private func fetchWords() {
        if let fileURL = Bundle.main.url(forResource: "words", withExtension: "txt") {
            if let contents = try? String(contentsOf: fileURL) {
                var word = contents.components(separatedBy: ", ")
                self.wordList.append(String(describing: word))
            }
        }
    }
    
    private func letterGame(word: String, userLetters: [String]) -> String {
        var promptWord = ""
        for letter in word {
            let strLetter = letter

            if usedLetters.contains(String(strLetter)) {
                promptWord += String(strLetter)
            } else {
                promptWord += "?"
            }
        }
        return promptWord
    }
}

