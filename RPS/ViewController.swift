//
//  ViewController.swift
//  RPS
//
//  Created by test on 11.12.2020.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var robotButton: UIButton!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!
    @IBOutlet weak var scissorsButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        resetButton.isHidden = true
    }
    func play( sign: Sign) {
        let computerSign = randomSign()
        robotButton.setTitle(computerSign.emoji, for: .normal)
        
        switch sign {
        case .rock:
            rockButton.isHidden = false
            paperButton.isHidden = true
            scissorsButton.isHidden = true
        case .paper:
            rockButton.isHidden = true
            paperButton.isHidden = false
            scissorsButton.isHidden = true
        case .scissors:
            rockButton.isHidden = true
            paperButton.isHidden = true
            scissorsButton.isHidden = false
        }
        
        resetButton.isHidden = false
        
        let result = sign.takeTurn(oposite: computerSign)
        
        switch result {
        case .start:
            reset()
            
        case .win:
            statusLabel.text = "It's a win!"
            self.view.backgroundColor = UIColor.green

        case .lose:
            statusLabel.text = "It's a lose!"
            self.view.backgroundColor = UIColor.red

        case .draw:
            statusLabel.text = "It's a draw!"
            self.view.backgroundColor = UIColor.gray

        }
    }
    
    
    func reset() {
        statusLabel.text = "Rock, paper, scissors?"
        self.view.backgroundColor = UIColor.white

        rockButton.isHidden = false
        paperButton.isHidden = false
        scissorsButton.isHidden = false
        resetButton.isHidden = false
        
        resetButton.isHidden = true
    }
    
    // Mark: - IBAction
    @IBAction func rockButtonPressed(_ sender: UIButton) {
        play(sign: .rock)
    }
    
    @IBAction func paperButtonPressed(_ sender: UIButton) {
        play(sign: .paper)
    }
    
    @IBAction func scissorsButtonPressed(_ sender: Any) {
        play(sign: .scissors)
    }
    
    @IBAction func resetButtonPressed(_ sender: UIButton) {
        reset()
    }
    
}

