//
//  ViewController.swift
//  TopQuiz
//
//  Created by Bartek Bugajski on 07/05/2019.
//  Copyright © 2019 BB. All rights reserved.
//

import GameplayKit
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionsCounter: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var progressView: UIProgressView!
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
    
    var progressViewBar: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateQuestion()
        updateUI()
        
        iconView.alpha = 0
        questionLabel.alpha = 0
        optionA.alpha = 0
        optionB.alpha = 0
        optionC.alpha = 0
        optionD.alpha = 0
        
    
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate(withDuration: 1, animations: {
            self.iconView.alpha = 1
        }) { (true) in
            self.showQuestion()
            }
        }
    
    func showQuestion() {
        UIView.animate(withDuration: 1, animations: {
            self.questionLabel.alpha = 1
        }, completion: { (true) in
            self.showAnswers()
        }
        )
    }
    
    func showAnswers() {
        UIView.animate(withDuration: 1, animations: {
            self.optionA.alpha = 1
            self.optionB.alpha = 1
            self.optionC.alpha = 1
            self.optionD.alpha = 1
        })
    }

    
    @IBAction func answerPressed(_ sender: UIButton) {
        if sender.tag == selectedAnswer {
            print("correct")
            score += 1
            questionNumber += 1
            updateQuestion()
            progressView.backgroundColor = .green
        } else {
            progressView.backgroundColor = .red
            
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
            
        } else if questionNumber >= allQuestions.list.count {
            let alert = UIAlertController(title: "Awesome", message: "End of Quiz. Do you want to start over?", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: {action in self.restartQuiz()})
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
          print("wrong" )
        }
        updateUI()
    }
    
    
    
    func updateUI() {
        scoreLabel.text = "Score: \(score)"
        questionsCounter.text = "\(questionNumber + 1)/\(allQuestions.list.count)"
        progressView.frame.size.width = (view.frame.size.width / CGFloat(allQuestions.list.count)) * CGFloat(questionNumber)
        
        
    }
    /*
    
    private func updateQuestion() {
        
        if allQuestions.list.count > 0 && allQuestions.list.count < 19 {
            questionNumber = Int(arc4random()) % allQuestions.list.count
            iconView.image = UIImage(named:(allQuestions.list[questionNumber].questionIcon))
            questionLabel.text = allQuestions.list[questionNumber].question
            optionA.setTitle(allQuestions.list[questionNumber].optionA, for: UIControl.State.normal)
            optionB.setTitle(allQuestions.list[questionNumber].optionB, for: UIControl.State.normal)
            optionC.setTitle(allQuestions.list[questionNumber].optionC, for: UIControl.State.normal)
            optionD.setTitle(allQuestions.list[questionNumber].optionD, for: UIControl.State.normal)
            selectedAnswer = allQuestions.list[questionNumber].correctAnswer
            updateUI()
            
            allQuestions.list.remove(at: questionNumber)
            
        } else {
            NSLog("Quiz finished!")
        }
    }

    */
    
    func restartQuiz() {
        score = 0
        questionNumber = 0
        updateQuestion()
    }
}

