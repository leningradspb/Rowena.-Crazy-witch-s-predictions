//
//  YesNoAnswerVC.swift
//  Rowena. Crazy witch's predictions
//
//  Created by Eduard Sinyakov on 18/05/2019.
//  Copyright © 2019 Eduard Sinyakov. All rights reserved.
//

import UIKit

class YesNoAnswerVC: BasedViewController {
    
    var text = String()
    let array = ["Yes", "No", "Yes", "No", "Yes", "No", "Yes", "No", "Yes", "No","Yes", "No","Yes", "No","Yes", "No","Yes", "No","Yes", "No","Yes", "No", "I don't know 🤪"]

    @IBOutlet weak var labelAnswer: UILabel!
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = text + "?"
        labelAnswer.text = array.randomElement()
        navigationController?.isNavigationBarHidden = true
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
