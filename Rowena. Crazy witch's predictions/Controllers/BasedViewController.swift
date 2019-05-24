//
//  BasedViewController.swift
//  Rowena. Crazy witch's predictions
//
//  Created by Eduard Sinyakov on 15/05/2019.
//  Copyright © 2019 Eduard Sinyakov. All rights reserved.
//

import UIKit

class BasedViewController: UIViewController {
    
    
    var backgroundImageView = UIImageView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupBackgroundImage()
        
        navigationController?.navigationBar.tintColor = .orange
        navigationController?.isNavigationBarHidden = false
    }
    
    
    func setupBackgroundImage() {
        backgroundImageView.image = UIImage(named: "witch-1456313_1280")
        backgroundImageView.contentMode = .scaleAspectFill
        view.backgroundColor = .black
        view.addSubview(backgroundImageView)
        view.sendSubviewToBack(backgroundImageView)
        
        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
        backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

    
    


