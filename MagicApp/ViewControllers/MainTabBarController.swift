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
        middleButton.layer.cornerRadius = middleButtonDiameter / 2
        middleButton.translatesAutoresizingMaskIntoConstraints = false
        return middleButton
    }()
    
        private lazy var gifImageView: UIImageView = {
            let gifImageView = UIImageView()
            gifImageView.loadGif(name: "orangeBall")
            gifImageView.tintColor = .white
            
            gifImageView.translatesAutoresizingMaskIntoConstraints = false
            return gifImageView
        }()
    
    private func makeUI() {
        // 1
        tabBar.addSubview(middleButton)
        middleButton.addSubview(gifImageView)
        
        // 2
        NSLayoutConstraint.activate([
            // 2.1
            middleButton.heightAnchor.constraint(equalToConstant: middleButtonDiameter),
            middleButton.widthAnchor.constraint(equalToConstant: middleButtonDiameter),
            // 2.2
            middleButton.centerXAnchor.constraint(equalTo: tabBar.centerXAnchor),
            middleButton.topAnchor.constraint(equalTo: tabBar.topAnchor, constant: -10)
        ])
        
        // 3
        NSLayoutConstraint.activate([
            // 3.1
            gifImageView.heightAnchor.constraint(equalToConstant: middleButtonDiameter + 40),
            gifImageView.widthAnchor.constraint(equalToConstant: middleButtonDiameter + 40),
            // 3.2
            gifImageView.centerXAnchor.constraint(equalTo: middleButton.centerXAnchor),
            gifImageView.centerYAnchor.constraint(equalTo: middleButton.centerYAnchor)
        ])
        
    }
    
}
