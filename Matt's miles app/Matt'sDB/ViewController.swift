//
//  ViewController.swift
//  Matt'sDB
//
//  Created by Matt Keyzer on 10/9/23.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    var dataManager : NSManagedObjectContext!
    var listArray = [NSManagedObject]()
    override func viewDidLoad() {
        super.viewDidLoad()
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        dataManager = appDelegate.persistentContainer.viewContext
        myLabel.text?.removeAll()
        fetchData()
        // Do any additional setup after loading the view.
    }
    
    func fetchData() {
        let fetchRequest : NSFetchRequest<NSFetchRequestResult> = NSFetchRequest(entityName: "Item")
        do {
            let result = try dataManager.fetch(fetchRequest)
            listArray = result as! [NSManagedObject]
            for item in listArray{
                let product = item.value(forKey: "about") as! String
                myLabel.text! += product
            }
        } catch {
            print("Error retrieving data")
        }
    }
    
    
    
    @IBAction func saveRecord(_ sender: Any) {
        let newEntity = NSEntityDescription.insertNewObject(forEntityName: "Item", into: dataManager)
        newEntity.setValue(enteredText.text! + ",", forKey: "about")
        do {
            try self.dataManager.save()
            listArray.append(newEntity)
        } catch {
            print ("Error saving data")
        }
        myLabel.text?.removeAll()
        enteredText.text?.removeAll()
        fetchData()
    }
    
    @IBAction func deleteRecord(_ sender: Any) {
        let deleteItem = enteredText.text!
        for item in listArray {
            if item.value(forKey: "about") as! String == deleteItem {
                dataManager.delete(item)
                
            }
            do {
                try self.dataManager.save()
            } catch {
                print("Error deleting data")
            }
            myLabel.text?.removeAll()
            enteredText.text?.removeAll()
            fetchData()
            
        }
    }
    
    
    @IBOutlet weak var enteredText: UITextField!
    

    @IBOutlet weak var myLabel: UILabel!
    
}

