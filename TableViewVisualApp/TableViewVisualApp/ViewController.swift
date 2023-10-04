//
//  ViewController.swift
//  TableViewVisualApp
//
//  Created by Matt Keyzer on 10/4/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {

    let petArray = ["cat", "dog", "parakeet", "parrot", "finch", "canary", "tropical fish", "goldfish", "sea horses", "hamster", "gerbil", "rabbit", "turtle", "snake", "lizard", "hermit crab"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cellID")
        cell?.textLabel?.text = petArray[indexPath.row]
        return cell!
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return petArray.count
    }


}

