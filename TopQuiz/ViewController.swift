//
//  ViewController.swift
//  TopQuiz
//
//  Created by Bartek Bugajski on 07/05/2019.
//  Copyright © 2019 BB. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionsCounter: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var progressView: UIView!
    @IBOutlet weak var iconView: UIImageView!
    @IBOutlet weak var questionLabel: UILabel!
  
    @IBOutlet weak var correctAnswerSign: UILabel!
    @IBOutlet weak var wrongAnswerSign: UILabel!
    
    //Outlet for buttons
    
    @IBOutlet weak var optionA: UIButton!
    @IBOutlet weak var optionB: UIButton!
    @IBOutlet weak var optionC: UIButton!
    @IBOutlet weak var optionD: UIButton!
    
    let allQuestions = QuestionBank()
    var questionNumber: Int = 0
    var score: Int = 0
    var selectedAnswer: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateQuestion()
        updateUI()
        
        
    }

    @IBAction func answerPressed(_ sender: UIButton) {
        if sender.tag == selectedAnswer {
            print("correct")
            score += 1
            questionNumber += 1
            updateQuestion()
        } else {
        questionNumber += 1
           print("wrong")
        }

        
       
        
        
    }
    
    func updateQuestion() {
        if questionNumber <= allQuestions.list.count - 1 {
            iconView.image = UIImage(named:(allQuestions.list[questionNumber].questionIcon))
            questionLabel.text = allQuestions.list[questionNumber].question
            optionA.setTitle(allQuestions.list[questionNumber].optionA, for: UIControl.State.normal)
            optionB.setTitle(allQuestions.list[questionNumber].optionB, for: UIControl.State.normal)
            optionC.setTitle(allQuestions.list[questionNumber].optionC, for: UIControl.State.normal)
            optionD.setTitle(allQuestions.list[questionNumber].optionD, for: UIControl.State.normal)
            selectedAnswer = allQuestions.list[questionNumber].correctAnswer
           
        } else {
          print("wrong" )
        }
        updateUI()
        
    }
        
    func updateUI() {
        scoreLabel.text = "Score: \(score)"
        questionsCounter.text = "\(questionNumber)/\(allQuestions.list.count)"
        progressView.frame.size.width = (view.frame.size.width / CGFloat(allQuestions.list.count)) * CGFloat(questionNumber)
        
    }
    
    func restartQuiz() {
        score = 0
        questionNumber = 0
        updateQuestion()
    }
}

