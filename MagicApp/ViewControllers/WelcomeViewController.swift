//
//  WelcomeViewController.swift
//  MagicApp
//
//  Created by Denis Kukushkin on 20.11.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
   
    @IBOutlet var welcomeLabel: UILabel!
    
    var user: MagicUser!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(user.login)!"
    }
    
}
