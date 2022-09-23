//
//  Card.swift
//  Cards
//
//  Created by Сергей Смирнов on 23.09.2022.
//

import UIKit

enum CardType: CaseIterable {
    case circle, cross, square, fill
}

enum CardColor: CaseIterable {
    case red, green, black, gray, brown, yellow, purple, orange
}

typealias Card = (type: CardType, color: CardColor)
