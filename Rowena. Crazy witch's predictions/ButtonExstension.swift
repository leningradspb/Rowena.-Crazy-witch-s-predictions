//
//  ButtonExstension.swift
//  Rowena. Crazy witch's predictions
//
//  Created by Eduard Sinyakov on 15/05/2019.
//  Copyright © 2019 Eduard Sinyakov. All rights reserved.
//

import Foundation
import UIKit

extension UIButton {
    
    func pulsate() {
        
        let pulse = CASpringAnimation(keyPath: "transform.scale")
        pulse.duration = 6.9
        pulse.fromValue = 0.85
        pulse.toValue = 1
        pulse.autoreverses = true
        pulse.repeatCount = 150
        pulse.initialVelocity = 1
        pulse.damping = 0
        
        
        /*
         pulse.duration = 1.9
         pulse.fromValue = 1
         pulse.toValue = 1.2
         pulse.autoreverses = true
         pulse.repeatCount = 100
         pulse.initialVelocity = 0.2
         pulse.damping = 1
         */
        
        layer.add(pulse, forKey: nil)
    }
    
    func flash() {
        
        let flash = CABasicAnimation(keyPath: "opacity")
        flash.duration = 0.5
        flash.fromValue = 1
        flash.toValue = 0.1
        flash.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        flash.autoreverses = true
        flash.repeatCount = 1
        
        
        layer.add(flash, forKey: nil)
        
    }
    
    
}
