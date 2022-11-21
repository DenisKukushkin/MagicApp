//
//  SecondTrickResultViewController.swift
//  MagicApp
//
//  Created by Denis Kukushkin on 21.11.2022.
//

import UIKit

class SecondTrickResultViewController: UIViewController {
    
    var sum: String!
    
    @IBOutlet weak var showResultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showResultLabel.isHidden = true
        print(sum)
        
    }
    
    
    @IBAction func showResultButtonPressed() {
        showResultLabel.isHidden = false
    }
    
}
