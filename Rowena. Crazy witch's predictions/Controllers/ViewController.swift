//
//  ViewController.swift
//  Rowena. Crazy witch's predictions
//
//  Created by Eduard Sinyakov on 15/05/2019.
//  Copyright © 2019 Eduard Sinyakov. All rights reserved.
//

import UIKit



class ViewController: BasedViewController {
    
    var tutorialStatus = 0
    
    var observer: NSObjectProtocol?

    // Audio Player
    let audioPlayer = AudioPlayer()
    
    
    @IBAction func historysBA(_ sender: Any) {
    }
    
    @IBOutlet weak var historysBO: CustomButton!
    
    @IBOutlet weak var predictionBO: CustomButton!
    @IBAction func predictionAction(_ sender: Any) {
    }
    
    @IBOutlet weak var letsTalkBO: CustomButton!
    @IBAction func letsTalkAction(_ sender: Any) {
    }
    
    @IBAction func settings(_ sender: UIBarButtonItem) {
        
    }
    @IBOutlet weak var settingsBO: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    } // конец viewDidiLoad
    
    override func viewWillAppear(_ animated: Bool) {
        
        
        
        setupButtons()
        
        setupMusic()
        
        navigationController?.navigationBar.tintColor = .clear
        navigationController?.isNavigationBarHidden = true
        
        
        if UserDefaults.standard.value(forKey: "tutorialStatus") == nil {
            performSegue(withIdentifier: "vcToEnvc", sender: self)
            tutorialStatus = 1
            UserDefaults.standard.set(tutorialStatus, forKey: "tutorialStatus")
        }
        // TODO: экран приветствия
//        if tutorialStatus == 0 {
//            performSegue(withIdentifier: "vcToEnvc", sender: self)
//        }
    }
    
    
    
    func setupButtons() {
        predictionBO.pulsate()
        letsTalkBO.pulsate()
        historysBO.pulsate()
        
        
    }
    
    func setupMusic() {
        audioPlayer.playMusic()
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "vcToEnvc" {
            let dvc = segue.destination as! EnterNameViewController
        }
    }
    
    
    //MARK: DID UNWIND SEGUE
    @IBAction func didUnwindSegue(_ segue: UIStoryboardSegue) {
        
    } // end of didUnwindSegue

}// end of class

