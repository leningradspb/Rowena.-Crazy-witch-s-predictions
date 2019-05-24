//
//  EndOFFindMatchesVC.swift
//  Rowena. Crazy witch's predictions
//
//  Created by Eduard Sinyakov on 18/05/2019.
//  Copyright © 2019 Eduard Sinyakov. All rights reserved.
//

import UIKit

class EndOFFindMatchesVC: BasedViewController {
    
    var text = String()

    @IBAction func menuAction(_ sender: UIButton) {
//        
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let vc = storyboard.instantiateViewController(withIdentifier: "ViewController")
//        vc.navigationController?.isNavigationBarHidden = false
//        present(vc, animated: true, completion: nil)
        
      
        
    }
  
    
    @IBAction func playAgainAction(_ sender: UIButton) {
    }
    @IBOutlet weak var menu: UIButton!
    @IBOutlet weak var playAgain: UIButton!
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.isNavigationBarHidden = true
        
        label.text = text

        setupButtons()
    }
    
    
    
    func setupButtons() {
        menu.layer.cornerRadius = 20
        menu.layer.borderWidth = 3
        menu.layer.borderColor = #colorLiteral(red: 0.7296833396, green: 0.4263688922, blue: 0.0730580762, alpha: 1)
        menu.backgroundColor = #colorLiteral(red: 0.7073833346, green: 0.7075039148, blue: 0.7073674798, alpha: 1)
        menu.alpha = 0.8
        
        playAgain.layer.cornerRadius = 20
        playAgain.layer.borderWidth = 3
        playAgain.layer.borderColor = #colorLiteral(red: 0.7296833396, green: 0.4263688922, blue: 0.0730580762, alpha: 1)
        playAgain.backgroundColor = #colorLiteral(red: 0.7073833346, green: 0.7075039148, blue: 0.7073674798, alpha: 1)
        playAgain.alpha = 0.8
    }
   

}
