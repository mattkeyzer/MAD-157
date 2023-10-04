//
//  ViewController.swift
//  GroupTableViewApp
//
//  Created by Matt Keyzer on 10/4/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let petArray = [["Mammal", "cat", "dog", "hamster", "gerbil", "rabbit"], ["Bird", "parakeet", "parrot", "canary", "finch"], ["Fish", "tropical fish", "goldfish", "sea horses"], ["Reptile", "turtle", "snake", "lizard"]]
    let cellID = "cellID"

    @IBOutlet weak var petTable: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        petTable.dataSource = self
        petTable.delegate = self
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {return petArray[section].count - 1    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {var cell = tableView.dequeueReusableCell(withIdentifier: cellID)
        if (cell == nil)
        {cell = UITableViewCell(style: UITableViewCell.CellStyle.default,reuseIdentifier: cellID)}
        cell?.textLabel?.text = petArray[indexPath.section][indexPath.row + 1]
        return cell!
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedItem = petArray[indexPath.section][indexPath.row + 1]
        let alert = UIAlertController(title: "Your Choice", message: "\(selectedItem)", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: { action -> Void in
            
            
        })
            alert.addAction(okAction)
            self.present(alert, animated: true, completion: nil)}
        // Code for creating a grouped table
        // First, change the Style property of the table view to Grouped in the Attributes Inspector pane
        
        func numberOfSections(in tableView:
             UITableView) -> Int {
                return petArray.count
                
            }
        func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
            return petArray[section][0]
            
        }
        
}


