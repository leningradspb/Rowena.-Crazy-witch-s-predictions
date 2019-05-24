//
//  CardModelFM.swift
//  Rowena. Crazy witch's predictions
//
//  Created by Eduard Sinyakov on 17/05/2019.
//  Copyright © 2019 Eduard Sinyakov. All rights reserved.
//

import Foundation

    class CardModel {
    
    func getCardSixteenCards() -> [Card] {
        
        // массив с картами
        var generatedCardsArray = [Card]()
        
        // сгенерировать случайные картинки для нормального уровня
        for _ in 1...8 {
            
            let randomNumber = arc4random_uniform(9) + 1
            
            
            // Первая карта
            let cardOne = Card()
            // присвоить фрон имэдж из слуайного номера
            cardOne.imageName = String(randomNumber)
            // cardOne.backImageName = storeInformation
            //  cardOne.backImageName = "skin3"
            // добавить в массив карт
            generatedCardsArray.append(cardOne)
            
            // Вторая карта
            let cardTwo = Card()
            // присвоить такое же имя и картинку
            cardTwo.imageName = String(randomNumber)
            // cardTwo.backImageName = storeInformation
            // добавить в массив
            generatedCardsArray.append(cardTwo)
        }
        return generatedCardsArray.shuffled()
    }
}
