//
//  Question.swift
//  TopQuiz
//
//  Created by Bartek Bugajski on 21/05/2019.
//  Copyright © 2019 BB. All rights reserved.
//

import Foundation


class Question {
    let questionIcon: String
    let question: String
    let optionA: String
    let optionB: String
    let optionC: String
    let optionD: String
    let correctAnswer: Int
    
    init(image: String, questionText: String, choiceA: String, choiceB: String, choiceC: String, choiceD: String, answer: Int) {
        questionIcon = image
        question = questionText
        optionA = choiceA
        optionB = choiceB
        optionC = choiceC
        optionD = choiceD
        correctAnswer = answer
    }
}
