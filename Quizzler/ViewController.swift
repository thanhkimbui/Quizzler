//
//  ViewController.swift
//  Quizzler
//
//  Created by Kim Thanh Bui on 2/24/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    let quiz = [["Four + Two is equal to Six", "True"], ["Five - Three is greater than One.", "True"], ["Three + Eight is less than Ten.", "False"]]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
        progressBar.progress = 0.0
    }
    
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle! // True, False
        let correctAnswer = quiz[questionNumber][1]
//        print("User's answer: \(userAnswer)")
//        print("The correct answer: \(correctAnswer)")
        if userAnswer == correctAnswer {
            print("Right")
        } else {
            print("Wrong")
        }
        
        questionNumber += 1
        updateUI()
    }
    
    func updateUI() {
        if (questionNumber < quiz.count) {
            questionLabel.text = quiz[questionNumber][0]
        } else {
//            questionLabel.text = "Congratulations! \n\nYou've Completed All Questions!"
            questionNumber = 0
            questionLabel.text = quiz[questionNumber][0]
        }
    }
}

