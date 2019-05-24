//
//  CustomButton.swift
//  Rowena. Crazy witch's predictions
//
//  Created by Eduard Sinyakov on 15/05/2019.
//  Copyright © 2019 Eduard Sinyakov. All rights reserved.
//

import UIKit

@IBDesignable class CustomButton: UIButton {

    /// Толщина границы
    @IBInspectable var borderWidth: CGFloat {
        set { layer.borderWidth = newValue }
        get { return layer.borderWidth }
    }
    /// Цвет границы
    @IBInspectable var borderColor: UIColor? {
        set { layer.borderColor = newValue?.cgColor }
        get { return layer.borderColor?.UIColor }
    }
    /// Радиус границы
    @IBInspectable var cornerRadius: CGFloat {
        set { layer.cornerRadius = newValue }
        get { return layer.cornerRadius  }
    }
}

extension CGColor {
     var UIColor: UIKit.UIColor {
        return UIKit.UIColor(cgColor: self)
    }
}


