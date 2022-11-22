//
//  MagicTricksViewController.swift
//  MagicApp
//
//  Created by Denis Kukushkin on 20.11.2022.
//

import UIKit

class MagicTricksViewController: UIViewController {
    
    @IBOutlet weak var goButton: UIButton!
    
    @IBOutlet weak var firstTrickButton: UIButton!
    
    @IBOutlet weak var secondTrickButton: UIButton!
    
    @IBAction func goButtonPressed() {
        goButton.isHidden = true
        firstTrickButton.isHidden = false
        secondTrickButton.isHidden = false
        
    }
    
    @IBAction func unwindToTricks(segue: UIStoryboardSegue) {}
}
