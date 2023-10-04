//
//  ViewController.swift
//  Pickerminiapp
//
//  Created by Matt Keyzer on 9/27/23.
//

import UIKit

class ViewController: UIViewController {

    
    var _firstNum = Int.random(in: 1...10)
    var _secondNum = Int.random(in: 1...10)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var firstNum: UILabel!
    
   
    @IBOutlet weak var secondNum: UILabel!

    
    @IBOutlet weak var youScore: UILabel!
    @IBOutlet weak var comScore: UILabel!
    @IBOutlet weak var youValue: UILabel!
    @IBOutlet weak var comValue: UILabel!
    
    var _youScore = 0
    var _comScore = 0
    var _youValue = 0
    var _comValue = 0
    
    @IBAction func fightPressed(_ sender: UIButton) {
        
        _youValue = Int.random(in: 1...10)
        youValue.text = "\(_youValue)"
        _comValue = Int.random(in: 1...10)
        comValue.text = "\(_comValue)"
        if _youValue == _comValue{
            _youValue = Int.random(in: 1...10)
            youValue.text = "\(_youValue)"
            _comValue = Int.random(in: 1...10)
            comValue.text = "\(_comValue)"
        }
        
        if _youValue > _comValue{
            _youScore += 1
            youScore.text = "\(_youScore)"
        }
        if _youValue < _comValue{
            _comScore += 1
            comScore.text = "\(_comScore)"

        }
    }
    
    
    @IBOutlet weak var flipValue: UILabel!
    var _flipValue = 0
    
    @IBOutlet weak var flipCounter: UILabel!
    var _flipCounter = 0
    @IBAction func flipPressed(_ sender: Any) {
        _flipCounter += 1
        _flipValue = Int.random(in: 0...1)
        
        if _flipValue == 0{
            flipValue.text = "Heads"
        }
        
        if _flipValue == 1{
            flipValue.text = "Tails"
        }
        flipCounter.text = "\(_flipCounter)"
    }
    
    
    @IBAction func playPressed(_ sender: UIButton) {
        firstNum.text = "\(_firstNum)"
        secondNum.text = "\(_secondNum)"
        sender.isHidden = true
    }
    
    @IBOutlet weak var enteredValue: UITextField!
    
    @IBAction func enteredValue(_ sender: Any) {
    }
    
    @IBOutlet weak var score: UILabel!
    var _score = 0
    
    @IBAction func tapRecognized(_ sender: UITapGestureRecognizer) {
        enteredValue.resignFirstResponder()
        if enteredValue.text == String(_firstNum + _secondNum){
            _score += 1
            score.text = "Correct!"
        }
    }
    
    
}

