//
//  LoginViewController.swift
//  MagicApp
//
//  Created by Denis Kukushkin on 20.11.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    private let user = MagicUser.getUser()
    
    internal override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        
         for viewController in viewControllers {
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.user = user
            }
       }
    }
    
    
    @IBAction func logInButtonAction() {
        if nameTextField.text != user.login || passwordTextField.text != user.password {
            showAlert(with: "Invalid magic login ore password", and: "Please enter correct magic login and password")
            passwordTextField.text = ""
        }
    }
    
    
    @IBAction func forgotPasswordButtonAction() {
        showAlert(with: "Oops!", and: "Your magic password is abrakadabra 🪄")
    }
    
    @IBAction func forgotNameButtonAction() {
        showAlert(with: "Oops!", and: "Your magic name is Gudini 🧙‍♂️")
    }
    
    @IBAction func unwindToLogin(segue: UIStoryboardSegue) {
        nameTextField.text = ""
        passwordTextField.text = ""
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
}

private extension LoginViewController {
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}


extension LoginViewController: UITextFieldDelegate {

    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if nameTextField.text == "" {
            nameTextField.becomeFirstResponder()
        } else if passwordTextField.text == "" {
            passwordTextField.becomeFirstResponder()
        } else {
            logInButtonAction()
            performSegue(withIdentifier: "toWelcomeScreen", sender: nil)
        }
        return true
    }
}
