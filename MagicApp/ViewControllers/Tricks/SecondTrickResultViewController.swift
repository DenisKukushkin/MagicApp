//
//  SecondTrickResultViewController.swift
//  MagicApp
//
//  Created by Denis Kukushkin on 21.11.2022.
//

import UIKit

class SecondTrickResultViewController: UIViewController {
    
    var sum: Int!

    @IBOutlet weak var theResultIsLabel: UILabel!
    @IBOutlet weak var showResultLabel: UILabel!
    
    @IBAction func showResultButtonPressed() {
        theResultIsLabel.isHidden = false
        showResultLabel.isHidden = false
        showResultLabel.text = String(getAnswer(for: sum))
    }
    
    private func getAnswer(for sum: Int) -> String {
        let answer = "\(sum / 3 - 1), \(sum / 3), \(sum / 3 + 1), 🪄"
        return answer
    }
    
}
