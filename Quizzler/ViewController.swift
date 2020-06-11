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
        "Four + Two is equal to Six",
        "Five - Three is equal to One",
        "Three + Eight is less than Ten",
        "Rila Fukushima is cute",
        "The Godfather is the greatest film ever made",
    ]
    
    var questionNumber: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        questionNumber += 1
        updateUI()
    }
    
    func updateUI() {
        questionText.text = quiz[questionNumber]
    }
}
