//
//  DeveloperViewController.swift
//  MagicApp
//
//  Created by Denis Kukushkin on 20.11.2022.
//

import UIKit

class DeveloperViewController: UIViewController {


    @IBOutlet var profileImage: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        profileImage.image = UIImage(named: "developer")
        profileImage.layer.cornerRadius = profileImage.bounds.width / 2
        profileImage.layer.borderColor = UIColor.systemCyan.cgColor
        profileImage.layer.borderWidth = 2

    }

}
