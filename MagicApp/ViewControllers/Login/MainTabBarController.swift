//
//  MainTabBarController.swift
//  MagicApp
//
//  Created by Кукушкин Денис Сергеевич on 22.11.2022.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeUI()
    }
    
    
    private let middleButtonDiameter: CGFloat = 42
    
    private lazy var middleButton: UIButton = {
        let middleButton = UIButton()
        middleButton.translatesAutoresizingMaskIntoConstraints = false
        return middleButton
    }()
    
        private lazy var gifImageView: UIImageView = {
            let gifImageView = UIImageView()
            gifImageView.loadGif(name: "roundBall")
            gifImageView.translatesAutoresizingMaskIntoConstraints = false
            return gifImageView
        }()
    
    private func makeUI() {
        tabBar.addSubview(middleButton)
        middleButton.addSubview(gifImageView)
        
        NSLayoutConstraint.activate([
            middleButton.heightAnchor.constraint(equalToConstant: middleButtonDiameter),
            middleButton.widthAnchor.constraint(equalToConstant: middleButtonDiameter),
            middleButton.centerXAnchor.constraint(equalTo: tabBar.centerXAnchor),
            middleButton.topAnchor.constraint(equalTo: tabBar.topAnchor, constant: -10)
        ])
        
        NSLayoutConstraint.activate([
            gifImageView.heightAnchor.constraint(equalToConstant: middleButtonDiameter + 5),
            gifImageView.widthAnchor.constraint(equalToConstant: middleButtonDiameter + 5),
            gifImageView.centerXAnchor.constraint(equalTo: middleButton.centerXAnchor),
            gifImageView.centerYAnchor.constraint(equalTo: middleButton.centerYAnchor)
        ])
        
    }
    
}
