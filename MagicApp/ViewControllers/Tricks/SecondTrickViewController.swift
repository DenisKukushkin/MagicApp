//
//  SecondTrickViewController.swift
//  MagicApp
//
//  Created by Denis Kukushkin on 21.11.2022.
//

import UIKit

class SecondTrickViewController: UIViewController {

    @IBOutlet var progressView: UIProgressView!
    @IBOutlet var toDoLabel: UILabel!
    @IBOutlet weak var sumTextField: UITextField!
    
    private let questions = Question.getSecondTrickQuestions()
    private var questionIndex = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
        
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let secondTrickResultVC = segue.destination as? SecondTrickResultViewController else { return }
        secondTrickResultVC.sum = Int(sumTextField.text ?? "0")
    }
    
    @IBAction func nextButtonAction(_ sender: Any) {
        nextQuestion()
    }
    
}

extension SecondTrickViewController {
    private func updateUI() {
        
        toDoLabel.text = questions[questionIndex].title
        title = "Question № \(questionIndex + 1) of \(questions.count)"
        
        if questionIndex == 1 {
            sumTextField.isHidden = false
        }
        
    }
    
    private func nextQuestion() {
        questionIndex += 1
        
        if questionIndex < questions.count {
            updateUI()
            return
        }
        
        guard let sum = sumTextField.text else { return }
        guard let _ = Int(sum) else { return showAlert(with: "Oops!", and: "Please enter number") }
            performSegue(withIdentifier: "showResult", sender: nil)

    }
    
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

