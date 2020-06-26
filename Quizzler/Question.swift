//
//  Question.swift
//  Quizzler
//
//  Created by Rob Ranf on 6/25/20.
//  Copyright © 2020 Rob Ranf. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    let answer: String
    
    init(q: String, a: String) {
        text = q
        answer = a
    }
}
