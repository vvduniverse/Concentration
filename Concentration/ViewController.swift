//
//  ViewController.swift
//  Concentration
//
//  Created by Vahtee Boo on 24.09.2021.
//

import UIKit

class ViewController: UIViewController {

    var touches = 0 {
        didSet{
            touchLabel.text = "Touches: \(touches)"
        }
    }
    
    func flipButtob(emoji: String, button: UIButton) {
        if button.currentTitle == emoji {
            button.setTitle("", for: .normal)
            button.backgroundColor = #colorLiteral(red: 0.1273498833, green: 0.7838081717, blue: 0.3047893941, alpha: 1)
        } else {
            button.setTitle(emoji, for: .normal)
            button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
    
    let emojiCollection = ["🦊", "🐰", "🦊", "🐰"]
    
    @IBOutlet var buttonCollection: [UIButton]!
    @IBOutlet weak var touchLabel: UILabel!
    @IBAction func buttonAction(_ sender: UIButton) {
        touches += 1
        if let buttonIndex = buttonCollection.firstIndex(of: sender) {
            flipButtob(emoji: emojiCollection[buttonIndex], button: sender)
        }
    }
    
}

