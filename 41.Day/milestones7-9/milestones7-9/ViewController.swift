//
//  ViewController.swift
//  milestones7-9
//
//  Created by Ömer Faruk Öztürk on 25.12.2022.
//

import UIKit

final class ViewController: UIViewController {
    private let letters = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    private var errorLetter = ""
    private var errorIndex = 0
    private var hearthCount = 9
    @IBOutlet private weak var imageView: UIImageView!
    @IBOutlet private weak var activeLettersView: UIView!
    @IBOutlet private weak var allLettersView: UIView!
    
    private var activeLetterLabel: UILabel!
    private var activeLetters = ""
    private var usedLetters = [String]()
    
    private var wordList = [String]()
    private var wordIndex = 0
    
    private var letterButtons = [UIButton]()
    
    override func loadView() {
        super.loadView()
        fetchWords()
        
        
        
        configureView()
        constraintView()
    }
    
    @objc func letterTapped(_ sender: UIButton) {
        guard let buttonTitle = sender.titleLabel?.text else { return }
        usedLetters.append(buttonTitle)
        
        activeLetters = setWordAsGame(word: wordList[wordIndex], usedLetters: usedLetters)
        activeLetterLabel.text = activeLetters.uppercased()
    }
}

extension ViewController {
    //MARK: Fetch Words From File
    private func fetchWords() {
        if let fileURL = Bundle.main.url(forResource: "words", withExtension: "txt") {
            if let contents = try? String(contentsOf: fileURL) {
                let wordArray = contents.components(separatedBy: ", ")
                for i in wordArray {
                    wordList.append(i)
                }
            }
        }
    }
    
    //MARK: Constraints
    private func constraintView() {
        NSLayoutConstraint.activate([
            activeLetterLabel.topAnchor.constraint(equalTo: activeLettersView.layoutMarginsGuide.topAnchor, constant: 20),
            activeLetterLabel.leftAnchor.constraint(equalTo: activeLettersView.layoutMarginsGuide.leftAnchor, constant: -10),
            activeLetterLabel.rightAnchor.constraint(equalTo: activeLettersView.layoutMarginsGuide.rightAnchor, constant: -10),
            
        ])
    }
    
    //MARK: Configure
    private func configureView() {
        
        activeLetterLabel = UILabel()
        activeLetterLabel.translatesAutoresizingMaskIntoConstraints = false
        for _ in 0..<wordList[wordIndex].count {
            activeLetters += "_ "
        }
        activeLetterLabel.text = activeLetters.uppercased()
        activeLetterLabel.font = UIFont.systemFont(ofSize: 30)
        activeLetterLabel.textAlignment = .center
        activeLettersView.addSubview(activeLetterLabel)
        
        activeLettersView.layer.borderWidth = 1
        allLettersView.layer.borderWidth = 2
        activeLettersView.backgroundColor = .white
        allLettersView.backgroundColor = .white
        
        for i in 0..<6 {
            justConfigureButtons(index: i, flag: 0, letterIndex: i)
        }
        for i in 0..<7 {
            justConfigureButtons(index: i, flag: 1, letterIndex: i + 7)
        }
        for i in 0..<6 {
            justConfigureButtons(index: i, flag: 2, letterIndex: i + 13)
        }
        for i in 0..<7 {
            justConfigureButtons(index: i, flag: 3, letterIndex: i + 19)
        }
    }
    
    private func justConfigureButtons(index: Int, flag: Int, letterIndex: Int) {
        let width = 40
        let height = 60
        var y = 20
        switch flag {
        case 0: y = 20
        case 1: y = 20 * 4
        case 2: y = 20 * 7
        case 3: y = 20 * 10
        default:
            y = 20
        }
        
        let letterButton = UIButton(type: .system)
        letterButton.titleLabel?.font = UIFont.systemFont(ofSize: 40)
        letterButton.setTitle(letters[letterIndex], for: .normal)
        let frame = CGRect(x: index * width, y: y, width: width, height: height)
        letterButton.frame = frame
        letterButton.addTarget(self, action: #selector(letterTapped), for: .touchUpInside)
        allLettersView.addSubview(letterButton)
        letterButtons.append(letterButton)
    }
    
    private func setWordAsGame(word: String, usedLetters: [String]) -> String {
        var promptWord = ""
        for letter in word.uppercased() {
            let strLetter = String(letter)
            
            if usedLetters.contains(strLetter) {
                promptWord += (strLetter + " ")
            } else {
                promptWord += "? "
            }
        }
        setImageAsGame(word: word, usedLetters: usedLetters)
        
        return promptWord
    }
    
    private func setImageAsGame(word: String, usedLetters: [String]) {
        for letter in word.uppercased() {
            if !usedLetters.contains(String(letter)) {
                print(usedLetters)
                errorIndex += 1
                hearthCount -= 1
                print(String(errorIndex) + " errorIndex")
                print(String(hearthCount) + " hearthCount")
                imageView.image = UIImage(named:"pic\(errorIndex)")
                if errorIndex == 9 {
                    if hearthCount == 0 {
                        imageView.image = UIImage(named:"gameover")
                        //En Baştan
                        errorIndex = 0
                        hearthCount = 9
                    }
                }
                break
            } else {
                break
            }
        }
        
        var result = ""
        for i in usedLetters {
            result += i
        }
        
        if word.contains(result) {
           print(result)
        } else {
            print("s")
        }
        
        if word.uppercased() == result.uppercased() {
            imageView.image = UIImage(named:"youwin")
        }
        print(result.uppercased())
        print(errorLetter.uppercased() + " error")
        print(String(hearthCount) + " hearthCount")
    }
}
