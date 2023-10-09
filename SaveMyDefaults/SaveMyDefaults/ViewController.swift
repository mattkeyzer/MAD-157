//
//  ViewController.swift
//  SaveMyDefaults
//
//  Created by Matt Keyzer on 10/9/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func saveButton(_ sender: Any) {
        UserDefaults.standard.set(serialNumber.text, forKey: "Text")
        UserDefaults.standard.set(switchButton.isOn, forKey: "Switch")
        UserDefaults.standard.set(slider.value, forKey: "Slider")
        
        
    }
    
    
    @IBAction func loadButton(_ sender: Any) {
        switchButton.isOn = UserDefaults.standard.bool(forKey: "Switch")
        slider.value = UserDefaults.standard.float(forKey: "Slider")
        serialNumber.text = UserDefaults.standard.string(forKey: "Text")
    }
    
    @IBAction func deleteButton(_ sender: Any) {
        switchButton.isOn = true
        slider.value = 0.5
        serialNumber.text = ""
    }
    
 
    
    @IBOutlet weak var serialNumber: UITextField!
    
    @IBOutlet weak var slider: UISlider!
    
    
    @IBOutlet weak var switchButton: UISwitch!
    
    
    
}

