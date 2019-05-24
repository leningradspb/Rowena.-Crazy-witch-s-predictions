//
//  FindMatchesCell.swift
//  Rowena. Crazy witch's predictions
//
//  Created by Eduard Sinyakov on 17/05/2019.
//  Copyright © 2019 Eduard Sinyakov. All rights reserved.
//

import UIKit

class FindMatchesCell: UICollectionViewCell {
    
     var card: Card?
    
    @IBOutlet weak var backImage: UIImageView!
    @IBOutlet weak var frontImage: UIImageView!
    //TODO:  раскоментить и выполнить работу
    func setCard(_ card: Card) {
        
        self.card = card
        
        // обезвредить баг переиспользования
        if card.isMatched == true {
           backImage.alpha = 0
            frontImage.alpha = 0
            
            return
        } else {
            backImage.alpha = 1
            frontImage.alpha = 1
        }
        
        // MARK: УСТАНОВИЛ ПРОЗРАЧНУЮ БЭКИМЭДДЖ. backImage.image
        // установить фронт имэдж
        //MARK: Установить frontImage and backImage
        frontImage.image    = UIImage(named: card.imageName)
        backImage.image     = UIImage(named: "witch")
        
        // решить баг переиспользования ячеек
        if card.isFlipped == true {
            // оставнять перевернутой лицом
            UIView.transition(from: backImage, to: frontImage, duration: 0, options: .showHideTransitionViews, completion: nil)
        } else {
            // оставнять перевернутой рубашкой
            UIView.transition(from: frontImage, to: backImage, duration: 0, options: .showHideTransitionViews, completion: nil)
        }
    }
    
    func flip() {
        UIView.transition(from: backImage, to: frontImage, duration: 0.3, options: [.transitionFlipFromLeft, .showHideTransitionViews], completion: nil)
    }
    
    func flipBack() {
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.3) {
            UIView.transition(from: self.frontImage, to: self.backImage, duration: 0.3, options: [.transitionFlipFromRight, .showHideTransitionViews], completion: nil)
        }
        
        
    }
    
    func remove() {
        backImage.alpha = 0
        UIView.animate(withDuration: 0.3, delay: 0.3, options: .curveEaseOut, animations: {
            self.frontImage.alpha = 0
        }, completion: nil)
    }
    
    
}
