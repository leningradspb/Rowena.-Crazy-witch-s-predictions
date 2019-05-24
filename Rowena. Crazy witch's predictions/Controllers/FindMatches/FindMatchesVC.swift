//
//  FindMatchesVC.swift
//  Rowena. Crazy witch's predictions
//
//  Created by Eduard Sinyakov on 17/05/2019.
//  Copyright © 2019 Eduard Sinyakov. All rights reserved.
//

import UIKit

class FindMatchesVC: BasedViewController {
    
    var timer = Timer()
    
    @IBOutlet weak var timerLabel: UILabel!
    // модель карт
    var model = CardModel()
    // вспомогательная переменная
    var cardArray = [Card]()
    
    @IBOutlet weak var pointsLabel: UILabel!
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    // переменная для определения перевернута карта или нет
    var firstCardIsFlippedIndex: IndexPath?
    
    var secondsForTimer = 50
    var currentPoints = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.layer.cornerRadius   = 10
        collectionView.layer.borderWidth    = 3
        collectionView.layer.borderColor    = #colorLiteral(red: 0.7296833396, green: 0.4263688922, blue: 0.0730580762, alpha: 1)
        collectionView.clipsToBounds        = true
        
        
        cardArray = model.getCardSixteenCards()

        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunc), userInfo: nil, repeats: true)
        
    }// ednOfViewDidLoad
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    
    @objc func timerFunc() {
        
        pointsLabel.text = String(currentPoints)
        
        if secondsForTimer > 0 {
            
            secondsForTimer -= 1
            let seconds = String(format: "%d", secondsForTimer)
            timerLabel.text = seconds
            
            if pointsLabel.text == "1600" {
                performSegue(withIdentifier: "toEndVC", sender: self)
                timer.invalidate()
            }
            
        }
        
        
        
        if secondsForTimer == 0  {
            performSegue(withIdentifier: "toEndVC", sender: self)
            timer.invalidate()
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toEndVC" {
            let dvc = segue.destination as! EndOFFindMatchesVC
            
            if currentPoints ==  1600 {
               dvc.text = "You'r win!"
            } else {
                dvc.text = "You'r lose 😕"
            }
            
        }
    }
    
    
}

extension FindMatchesVC: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return cardArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! FindMatchesCell
        
        let card = cardArray[indexPath.row]
        // установить карту из массива в фронт имэдж в коллекшвьюСелл (ячейка)
        cell.setCard(card)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let cell = collectionView.cellForItem(at: indexPath) as! FindMatchesCell
        
        // карта, которую выбрал юзер
        let card = cardArray[indexPath.row]
        
        
        
        if card.isFlipped == false && card.isMatched == false{
            cell.flip()
            // звук
            
            // установить нвоый статус
            card.isFlipped = true
            
            // выяснить это первая катра или вторая перевернуты?
            if firstCardIsFlippedIndex == nil {
                // это первая карта перевернута
                firstCardIsFlippedIndex = indexPath
                
            } else {
                // это вторая карта
                checkForMatches(indexPath)
            }
            
        }
        
        
        
    } // конец дидСелектАйтем
    
    // MARK: Игровая логика
    func checkForMatches(_ secondCardIsFlippedIndex: IndexPath) {
        // ячейки для двух карт
        let cardOneCell = collectionView.cellForItem(at: firstCardIsFlippedIndex!) as? FindMatchesCell
        
        let cardTwoCell = collectionView.cellForItem(at: secondCardIsFlippedIndex) as? FindMatchesCell
        
        // карты для двух карт
        let cardOne = cardArray[firstCardIsFlippedIndex!.row]
        let cardTwo = cardArray[secondCardIsFlippedIndex.row]
        
        if cardOne.imageName == cardTwo.imageName {
            // совпадение
           
            // статусы карт
            cardOne.isMatched = true
            cardTwo.isMatched = true
            
            
            // убрать из коллекшн вью
            cardOneCell?.remove()
            cardTwoCell?.remove()
            
            currentPoints += 200
            
            pointsLabel.text = String(currentPoints)
            
        } else {
            //нет совпадения
            
            // статус карт
            cardOne.isFlipped = false
            cardTwo.isFlipped = false
            
            // развернуть карты
            cardOneCell?.flipBack()
            cardTwoCell?.flipBack()
            
        }
        
        if cardOneCell == nil {
            collectionView.reloadItems(at: [firstCardIsFlippedIndex!])
        }
        
        // перезапустить проверку
        firstCardIsFlippedIndex = nil
        }
    }
    
    

