//
//  ViewController.swift
//  sprint3
//
//  Created by Диана on 10.02.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var tapButton: UIButton!
    
    var score = 0 {
        didSet {
            updateScoreLabel()
        }
    }
    
    @IBAction func buttonTap(_ sender: Any) {
        score += 1
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        scoreLabel.text = "Значение счетчика: 0"
    
    }
    
    func updateScoreLabel () {
        scoreLabel.text = "Значение счетчика: \(score)"
    }

}

