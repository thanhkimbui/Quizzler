//
//  Question.swift
//  Quizzler
//
//  Created by Kim Thanh Bui on 2/25/24.
//

import Foundation

struct Question {
    let text: String
    let answer: String
    
    init(q: String, a: String) {
        self.text = q
        self.answer = a
    }
}
