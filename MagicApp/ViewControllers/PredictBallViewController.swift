//
//  PredictBallViewController.swift
//  MagicApp
//
//  Created by Denis Kukushkin on 21.11.2022.
//

import UIKit

class PredictBallViewController: UIViewController {
    
    @IBOutlet weak var ballImageView: UIImageView!
    
    override func viewDidLoad() {
    
       ballImageView.loadGif(name: "ball")
    }
    
}
