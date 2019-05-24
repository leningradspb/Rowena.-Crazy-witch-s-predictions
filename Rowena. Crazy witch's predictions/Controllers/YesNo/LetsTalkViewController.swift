//
//  LetsTalkViewController.swift
//  Rowena. Crazy witch's predictions
//
//  Created by Eduard Sinyakov on 16/05/2019.
//  Copyright © 2019 Eduard Sinyakov. All rights reserved.
//

import UIKit

class LetsTalkViewController: BasedViewController {

    @IBAction func askBA(_ sender: CustomButton) {
    }
    @IBOutlet weak var askBO: CustomButton!
    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.delegate = self
        
        navigationController?.isNavigationBarHidden = true
        

        textField.resignFirstResponder()
        
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toAnswer" {
            let dvc = segue.destination as! YesNoAnswerVC
            dvc.text = textField.text ?? "I havn't value in text field"
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }


}

extension LetsTalkViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
            textField.resignFirstResponder()
        performSegue(withIdentifier: "toAnswer", sender: self)
        return true
    }
}
