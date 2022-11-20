//
//  MagicianDetailsViewController.swift
//  MagicApp
//
//  Created by Denis Kukushkin on 20.11.2022.
//

import UIKit

class MagicianDetailsViewController: UIViewController {

    @IBOutlet var coverImageView: UIImageView!
    @IBOutlet var trackNameLabel: UILabel!
    
    var magician: Magician!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = magician.song
        coverImageView.image = UIImage(named: magician.song)
        trackNameLabel.text = magician.description
    }
}
