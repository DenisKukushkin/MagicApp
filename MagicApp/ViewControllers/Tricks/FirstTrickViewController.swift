//
//  FirstTrickViewController.swift
//  MagicApp
//
//  Created by Denis Kukushkin on 20.11.2022.
//

import UIKit

class FirstTrickViewController: UIViewController {

    @IBOutlet var progressView: UIProgressView!
    @IBOutlet var toDoLabel: UILabel!
    
    private let questions = Question.getFirstTrickQuestions()
    private var questionIndex = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func nextButtonAction(_ sender: Any) {
        nextQuestion()
    }
    
}

extension FirstTrickViewController {
    private func updateUI() {
        toDoLabel.text = questions[questionIndex].title
        title = "Question № \(questionIndex + 1) of \(questions.count)"
    }
    
    private func nextQuestion() {
        questionIndex += 1

        if questionIndex < questions.count {
            updateUI()
            return
        }
        
        performSegue(withIdentifier: "showResult", sender: nil)
        
    }
    
}
