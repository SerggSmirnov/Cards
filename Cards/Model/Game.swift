//
//  Game.swift
//  Cards
//
//  Created by Сергей Смирнов on 23.09.2022.
//

import Foundation

class Game {
    var cardCount = 0
    var cards = [Card]()
    func generateCards() {
        var cards = [Card]()
        for _ in 0...cardCount {
            let randomElement = (type: CardType.allCases.randomElement()!, color: CardColor.allCases.randomElement()!)
            cards.append(randomElement)
        }
        self.cards = cards
    }
    
    func checkCards(_ fisrtCard: Card, _ secondCard: Card) -> Bool {
        if fisrtCard == secondCard {
            return true
        }
        return false
    }
}
