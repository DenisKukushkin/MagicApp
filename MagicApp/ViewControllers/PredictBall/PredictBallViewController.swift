//
//  PredictBallViewController.swift
//  MagicApp
//
//  Created by Denis Kukushkin on 21.11.2022.
//

import UIKit

class PredictBallViewController: UIViewController {
    
    @IBOutlet weak var ballImageView: UIImageView!
    @IBOutlet weak var predictLabel: UILabel!
    
    let predictions = Prediction.getPredictions()
   
    override func viewDidLoad() {
       ballImageView.loadGif(name: "ball")
    }
    
    @IBAction func ballButtonPressed() {
        predictLabel.text = predictions.randomElement()?.title
    }
}
