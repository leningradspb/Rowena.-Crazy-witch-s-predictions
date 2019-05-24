//
//  SettingsViewController.swift
//  Rowena. Crazy witch's predictions
//
//  Created by Eduard Sinyakov on 15/05/2019.
//  Copyright © 2019 Eduard Sinyakov. All rights reserved.
//

import UIKit

class SettingsViewController: BasedViewController {
    

    @IBAction func switchMusicAction(_ sender: UISwitch) {
        
    }
    @IBOutlet weak var musicSwitch: UISwitch!
    @IBOutlet weak var navigationItemOutlet: UINavigationItem!
    

    override func viewDidLoad() {
        super.viewDidLoad()
       
       // navigationItem.hidesBackButton = true
       // navigationItem.leftBarButtonItem?.tintColor = .orange
       // navigationItem.backBarButtonItem?.tintColor = .orange
        navigationController?.navigationBar.tintColor = .orange
        
    } // end of viewDidLoad

}
