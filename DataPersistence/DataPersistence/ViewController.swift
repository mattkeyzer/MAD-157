//
//  ViewController.swift
//  DataPersistence
//
//  Created by Matt Keyzer on 10/9/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBAction func writeText(_ sender: Any) {
        let fm = FileManager.default
        let urls = fm.urls(for: .documentDirectory, in: .userDomainMask)
        let url = urls.last?.appendingPathComponent("file.text")
        do {
            try writeTextHere.text.write(to: url!, atomically: true, encoding: String.Encoding.utf8)
        } catch{
            print("error writing to file")
        }
    }
    
    
    @IBAction func readText(_ sender: Any) {
        let fm = FileManager.default
        let urls = fm.urls(for: .documentDirectory, in: .userDomainMask)
        let url = urls.last?.appendingPathComponent("file.text")
        do {
            let fileContent = try String(contentsOf: url!, encoding: String.Encoding.utf8)
            displayTextHere.text = fileContent
        } catch{
            print("error reading the file")
        }
    }
    
    
    
    
    
    
    
    @IBOutlet weak var writeTextHere: UITextView!
    
    
    @IBOutlet weak var displayTextHere: UITextView!
    
    
    override func viewDidLoad() {
        writeTextHere.text = "write text here"
        displayTextHere.text = ""
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

