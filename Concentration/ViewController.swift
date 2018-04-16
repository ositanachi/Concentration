//
//  ViewController.swift
//  Concentration
//
//  Created by Osi Otugo on 4/13/18.
//  Copyright © 2018 Otugo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    lazy var game = Concentration(numberOfPairsOfCards: ((cardButtons.count +1) / 2))
    
    var flipCount: Int = 0 {
        didSet {
          flipCountLabel.text = "Flips: \(flipCount)"
      }
    }
    
    @IBOutlet weak var flipCountLabel: UILabel!

    @IBOutlet var cardButtons: [UIButton]!
    
    var emojiChoices: Array<String> = ["👻", "☠️", "☠️", "🧛🏿‍♂️", "👻","🧛🏿‍♂️"]

    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        if let cardNumber = cardButtons.index(of: sender){
            flipCard(withemoji: emojiChoices[cardNumber], on: sender)
        } else {
            print("Card not in cardButtons array")
        }
    }
    
    func flipCard(withemoji emoji: String, on button: UIButton) {
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.6819848418, blue: 0, alpha: 1)
        } else {
            button.setTitle(emoji, for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
}

