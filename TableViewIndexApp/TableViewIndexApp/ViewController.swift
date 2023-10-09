//
//  ViewController.swift
//  TableViewIndexApp
//
//  Created by Matt Keyzer on 10/4/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    let petArray = [["Shooter", "Doom", "CS2", "Halo", "Left 4 Dead"], ["Puzzle", "BTD6", "It Takes 2", "A Short Hike", "Peggle"], ["Relaxing", "Dave The Diver", "Terraria", "Minecraft", "Mini Motorways"], ["Lego", "Batman", "Starwars", "Marvel"]]
    
    let indexArray = ["🔫S", "🧩P", "🌞R", "🧱L"]
    let cellID = "cellID"
    override func viewDidLoad() {
        super.viewDidLoad()
        petTable.dataSource = self
        petTable.delegate = self
        petTable.sectionIndexColor = UIColor.black
        petTable.sectionIndexBackgroundColor = UIColor.white
        petTable.sectionIndexTrackingBackgroundColor = UIColor.darkGray
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return petArray[section].count - 1
        
    }
    @IBOutlet weak var petTable: UITableView!
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: cellID)
        if (cell == nil) {
            cell = UITableViewCell(style: UITableViewCell.CellStyle.default,reuseIdentifier: cellID)}
        cell?.textLabel?.text = petArray[indexPath.section][indexPath.row + 1]
        return cell!
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedItem = petArray[indexPath.section][indexPath.row + 1]
        let alert = UIAlertController(title: "Your Choice", message: "\(selectedItem)", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: { action -> Void in
        
            
        })
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)
        
    }
     func numberOfSections(in tableView: UITableView) -> Int {
        return petArray.count
        
     }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return petArray[section][0]
        
    }
    func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        return indexArray
        
    }


}

