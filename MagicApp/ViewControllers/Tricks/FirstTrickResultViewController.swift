//
//  ResultViewController.swift
//  MagicApp
//
//  Created by Denis Kukushkin on 20.11.2022.
//

import UIKit

class FirstTrickResultViewController: UIViewController {
    
    @IBOutlet weak var showResultLabel: UILabel!
    
    @IBAction func showResultButtonPressed() {
        showResultLabel.isHidden = false
    }
    
}

