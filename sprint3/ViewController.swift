//
//  ViewController.swift
//  sprint3
//
//  Created by Диана on 10.02.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet weak var plusButtonScore: UIButton!
    
    @IBOutlet weak var minusButtonScore: UIButton!
    
    @IBOutlet weak var resetButton: UIButton!
    
    @IBOutlet weak var changingHistory: UITextView!
    
    @IBOutlet weak var ScrollForChangingHistory: UIScrollView!
    
    
    var score = 0 {
        didSet {
            updateScoreLabel()
        }
    }
    
    var now = Date()

    var dateFormeter = DateFormatter()
    
    @IBAction func plusScore(_ sender: Any) {
        score += 1
        now = Date()
        changingHistory.text += "\(dateFormeter.string(from: now)) значение изменено на +1 \n"
        sizeMatchingTextAndScroll()
    }
    
    @IBAction func minusScore(_ sender: Any) { if score > 0 {score -= 1
        now = Date()
        changingHistory.text += "\(dateFormeter.string(from: now)) значение изменено на -1 \n"
        sizeMatchingTextAndScroll()
    } else {
        score = 0
        now = Date()
        changingHistory.text += "\(dateFormeter.string(from: now)) попытка уменьшить значение счётчика ниже 0 \n"
       sizeMatchingTextAndScroll()
    }
       
    }
    
    
    @IBAction func resetScore(_ sender: Any) { if score > 0 {
        score = 0
        now = Date()
      sizeMatchingTextAndScroll()
        
    }
        now = Date()
        changingHistory.text += "\(dateFormeter.string(from: now)) значение сброшено \n"
        sizeMatchingTextAndScroll()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scoreLabel.text = "Значение счетчика: 0"
        changingHistory.text = "История изменений: \n"
        
        dateFormeter.timeStyle = .short
        dateFormeter.dateStyle = .short
        
        ScrollForChangingHistory.addSubview(changingHistory)
        
        ScrollForChangingHistory.contentSize = self.changingHistory.bounds.size
        
    }
    
    func updateScoreLabel () {
        scoreLabel.text = "Значение счетчика: \(score)"
        
    }
    
    func sizeMatchingTextAndScroll() {
        changingHistory.sizeToFit()
        ScrollForChangingHistory.contentSize = self.changingHistory.bounds.size
    }
    
   }




