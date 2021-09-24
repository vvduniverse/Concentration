//
//  ViewController.swift
//  Concentration
//
//  Created by Vahtee Boo on 24.09.2021.
//

import UIKit

class ViewController: UIViewController {

    var touches = 0
    
    
    @IBOutlet var buttonCollection: [UIButton]!
    @IBOutlet weak var touchLabel: UILabel!
    @IBAction func buttonAction(_ sender: UIButton) {
        touches += 1
        touchLabel.text = "Touches: \(touches)"
    }
    
}

