//
//  Card.swift
//  Concentration
//
//  Created by Osi Otugo on 4/15/18.
//  Copyright © 2018 Otugo. All rights reserved.
//

import Foundation

//Main difference between classes and struct:
//Struct has no inheritance
//Structs are values while classes are references

struct Card {
    var isFaceUp = false
    var isMatched = false
    var identifier: Int

    static var identifierFactory = 0

    static func getUniqueIdentifier() -> Int {
        identifierFactory += 1
        return identifierFactory
    }

    init() {
        self.identifier = Card.getUniqueIdentifier()
    }
}
