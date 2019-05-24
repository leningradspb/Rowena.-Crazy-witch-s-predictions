//
//  PredictionViewController.swift
//  Rowena. Crazy witch's predictions
//
//  Created by Eduard Sinyakov on 16/05/2019.
//  Copyright © 2019 Eduard Sinyakov. All rights reserved.
//

import UIKit

class PredictionViewController: BasedViewController {
    
    @IBOutlet weak var labelOutlet: UILabel!
    
    let arrayWithPredictions =
        ["Just nothing", "How are you today? Please ask me later. I'm playing with Orvi now", "You’ll travel around the world", "You won’t have any problems", "You’ll live in a big house", "Everything ok", "Always say YES", "You will have a cat", "You'll have a dog", "A friend asks only for your time not your money", "Enjoy the good luck a companion brings you", "Hard work pays off in the future, laziness pays off now", "A smile is your pass to the hearts of others", "If you refuse to accept anything but the best, you very often get it", "Your shoes will make you happy today", "You cannot love life until you live the life you love", "People are naturally attracted to you", "If you have something good in your life, don't let it go!", "A dream you have will come true", "You will marry your lover", "You can make your own happiness", "The greatest risk is not taking one", "You must try, or hate yourself for not trying", "Wealth awaits you very soon", "If winter comes, can spring be far behind?", "You are very talented in many ways", "A stranger, is a friend you have not spoken to yet", "A new voyage will fill your life with untold memories", "You will travel to many exotic places in your lifetime", "Your ability for accomplishment will follow with success", "Nothing astonishes men so much as common sense and plain dealing", "Its amazing how much good you can do if you dont care who gets the credit."]
    
    
    @IBAction func askAgainAction(_ sender: Any) {
      labelOutlet.text = arrayWithPredictions.randomElement()
    }
    @IBOutlet weak var askAgainBO: CustomButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
        
        labelOutlet.layer.borderWidth = 3
        labelOutlet.layer.borderColor = #colorLiteral(red: 0.6778173447, green: 0.4116987586, blue: 0.09543780237, alpha: 1)
       // textView.layer.cornerRadius = textView.bounds.size.height / 2
        labelOutlet.layer.cornerRadius = 40
        labelOutlet.clipsToBounds = true
       // labelOutlet.setTitle(arrayWithPredictions.randomElement(), for: .normal)
        labelOutlet.text = arrayWithPredictions.randomElement()
        labelOutlet.textColor = #colorLiteral(red: 0.979670465, green: 0.5483846068, blue: 0, alpha: 1)
        labelOutlet.backgroundColor = .lightGray
        labelOutlet.alpha = 0.9
    }
    
    

}
