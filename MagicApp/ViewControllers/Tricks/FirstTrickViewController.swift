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
    
    @IBOutlet var chooseNumberStackView: UIStackView!
    @IBOutlet var chooseNumberSlider: UISlider!
    @IBOutlet var chooseNumberLabel: UILabel!
    
    
    private let questions = Question.getFirstTrickQuestions()
    private var questionIndex = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    
    @IBAction func chooseNumberSliderAction(_ sender: Any) {
        chooseNumberLabel.text = String(Int(chooseNumberSlider.value))
    }
    
    @IBAction func nextButtonAction(_ sender: Any) {
        nextQuestion()
    }
    
    

    
    @IBAction func remindButtonAction(_ sender: Any) {
        showAlert(with: "Kind reminder 🙃", and: "Your number is \(Int(chooseNumberSlider.value))")
        
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
    
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
