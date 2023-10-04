//
//  ViewController.swift
//  Picker Mini App
//
//  Created by Matt Keyzer on 9/27/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }



    
    var _youScore = 0
    var _comScore = 0
    var _youValue = 0
    var _comValue = 0
    
    
    @IBAction func fightPressed(_ sender: UIButton) {
        
        var _youValue = Int.random(in: 1...10)
        var _comValue = Int.random(in: 1...10)
        if _youValue == _comValue{
            var _youValue = Int.random(in: 1...10)
            var _comValue = Int.random(in: 1...10)
        }
       
            
        
        
        
    }
    
    
}

