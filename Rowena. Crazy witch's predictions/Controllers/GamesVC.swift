//
//  HistorysViewController.swift
//  Rowena. Crazy witch's predictions
//
//  Created by Eduard Sinyakov on 16/05/2019.
//  Copyright © 2019 Eduard Sinyakov. All rights reserved.
//

import UIKit

class GamesVC: BasedViewController {

    @IBOutlet weak var bigJumpingBA: UIButton!
    @IBOutlet weak var bigJumpingBO: UIButton!
    @IBOutlet weak var ticTacToeBA: UIButton!
    @IBOutlet weak var ticTacToeBO: UIButton!
    @IBOutlet weak var findMatchesBA: UIButton!
    @IBOutlet weak var findMatchesBO: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.isNavigationBarHidden = true

        setupButtons()
    }
    
    func setupButtons() {
        findMatchesBO.layer.borderWidth     = 3
        findMatchesBO.layer.borderColor     = #colorLiteral(red: 0.7296833396, green: 0.4263688922, blue: 0.0730580762, alpha: 1)
        findMatchesBO.layer.cornerRadius    = 40
        findMatchesBO.setTitleColor(.orange, for: .normal)
        findMatchesBO.setTitle("Find matches!", for: .normal)
        
        bigJumpingBO.layer.borderWidth     = 3
        bigJumpingBO.layer.borderColor     = #colorLiteral(red: 0.7296833396, green: 0.4263688922, blue: 0.0730580762, alpha: 1)
        bigJumpingBO.layer.cornerRadius    = 40
        bigJumpingBO.setTitleColor(.orange, for: .normal)
        bigJumpingBO.setTitle("Big jumping! Coming soon", for: .normal)
        
        ticTacToeBO.layer.borderWidth     = 3
        ticTacToeBO.layer.borderColor     = #colorLiteral(red: 0.7296833396, green: 0.4263688922, blue: 0.0730580762, alpha: 1)
        ticTacToeBO.layer.cornerRadius    = 40
        ticTacToeBO.setTitleColor(.orange, for: .normal)
        ticTacToeBO.setTitle("TicTacToe! Coming soon", for: .normal)
        
    }

}
