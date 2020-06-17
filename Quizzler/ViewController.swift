//
//  ViewController.swift
//  Quizzler
//
//  Created by Rob Ranf on 6/11/20.
//  Copyright © 2020 Rob Ranf. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionText: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButon: UIButton!
    
    let quiz = [
    ["Four + Two is equal to Six", "True"],
        ["Five - Three is equal to One", "False"],
        ["Three + Eight is less than Ten", "False"],
        ["Rila Fukushima is cute", "True"],
        ["The Godfather is the greatest film ever made", "True"],
    ]
    
    var questionNumber: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle
        let actualAnswer = quiz[questionNumber][1]
        if userAnswer == actualAnswer {
            print("Right!")
        } else {
            print("Wrong!")
        }
        
        if questionNumber < quiz.count - 1 {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
        
        updateUI()
    }
    
    func updateUI() {
        questionText.text = quiz[questionNumber][0]
    }
    
//    func gameOver() {
//        questionText.text = "Game Over!"
//    }
}
