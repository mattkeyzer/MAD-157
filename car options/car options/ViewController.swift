//
//  ViewController.swift
//  car options
//
//  Created by Matt Keyzer on 9/9/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Color: UITextField!
    @IBOutlet weak var tintPercent: UILabel!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func textFieldDoneEditing(sender: UITextField){
        sender.resignFirstResponder()
    }

    
    @IBAction func tintStepper(_ sender: UIStepper) {
        tintPercent.text = "\(Int(sender.value).description)" + "%"
    }
    
    
    @IBAction func donePressed(_ sender: UIButton) {
        let controller = UIAlertController(title: "Are You Sure?", message: nil, preferredStyle: .actionSheet)
        
        let yesAction = UIAlertAction(title: "Yes, I'm Sure!", style: .destructive, handler: nil)
        
        let noAction = UIAlertAction(title: "No way!", style: .cancel, handler: nil)
        
        controller.addAction(yesAction)
        controller.addAction(noAction)
        if let ppc = controller.popoverPresentationController {
            ppc.sourceView = sender
            ppc.sourceRect = sender.bounds
        }
        
        present(controller,animated: true,completion: nil)
        
    }
    
    
    
}

