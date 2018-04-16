//
//  Concentration.swift
//  Concentration
//
//  Created by Osi Otugo on 4/15/18.
//  Copyright © 2018 Otugo. All rights reserved.
//

import Foundation

class Concentration
{
    var cards = [Card]()

    func chooseCard(at index: Int)
    {

    }

    init(numberOfPairsOfCards: Int) {
        for _ in 0..<numberOfPairsOfCards {
            let card = Card()
            cards += [card, card]
        }
        //TODO: shuffle
    }
}
