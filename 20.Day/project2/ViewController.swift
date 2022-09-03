//
//  ViewController.swift
//  project2
//
//  Created by Ömer Faruk Öztürk on 2.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var scoreText: UILabel!
    
    var countries = [String]()
    var score = 0
    var correctAnswer = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.tintColor = UIColor.red
        // Do any additional setup after loading the view.
        
        btn1.layer.borderWidth = 3
        btn2.layer.borderWidth = 5
        btn3.layer.borderWidth = 3
        
        btn1.layer.borderColor = UIColor.lightGray.cgColor
        btn2.layer.borderColor = UIColor(red: 1.0, green: 0.7, blue: 0.5, alpha: 1).cgColor
        btn3.layer.borderColor = UIColor.lightGray.cgColor
        
        countries += ["estonia", "france", "germany", "ireland", "italy", "monaco", "nigeria", "poland", "russia", "spain", "uk", "us"]
        
        askQuestion()
        
        scoreText.textColor = UIColor.red
        scoreText.font.withSize(24)
    }

    
    
    func askQuestion(action: UIAlertAction! = nil) {
        
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
        print(correctAnswer)
        title = countries[correctAnswer].uppercased()
        
        btn1.setImage(UIImage(named: countries[0]), for: .normal)
        btn2.setImage(UIImage(named: countries[1]), for: .normal)
        btn3.setImage(UIImage(named: countries[2]), for: .normal)
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        var title = ""
        print(sender.tag)
        if sender.tag == correctAnswer {
            title = "Correct!"
            score += 1
            scoreText.text = String(score)
        } else {
            title = "Wrong!"
            score -= 1
            scoreText.text = String(score)
        }
        
        let ac = UIAlertController(title: title, message: "Your score is \(score)", preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "Continue", style: .default, handler: askQuestion))
        
        present(ac, animated: true)
    }
    
}

