//
//  MagicianDetailsViewController.swift
//  MagicApp
//
//  Created by Denis Kukushkin on 20.11.2022.
//

import UIKit

class MagicianDetailsViewController: UIViewController {

    @IBOutlet var magicianImageView: UIImageView!
    @IBOutlet var descriptionLabel: UILabel!
    
    var magician: Magician!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = magician.name
        magicianImageView.image = UIImage(named: magician.name)
        descriptionLabel.text = magician.description
    }
}
