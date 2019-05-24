//
//  EnterNameViewController.swift
//  Rowena. Crazy witch's predictions
//
//  Created by Eduard Sinyakov on 16/05/2019.
//  Copyright © 2019 Eduard Sinyakov. All rights reserved.
//

import UIKit

class EnterNameViewController: BasedViewController {
    
    var userName: String?
    
    var tutorialStatus = 1

    @IBOutlet weak var letsGoBO: CustomButton!
    @IBOutlet weak var textView: UITextView!
    
    @IBAction func letsGoBA(_ sender: Any) {
        
        
    }
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //MARK: User name is here
        textField.text = userName
        
        textView.text = "Hi! My name is Rowena. I'm CRAAAAZY witch! Cat Orvi is near. Let's start!"
        
        navigationController?.isNavigationBarHidden = true
        textField.resignFirstResponder()
        
        letsGoBO.pulsate()
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
    
    
}


extension EnterNameViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        return true
    }
}
