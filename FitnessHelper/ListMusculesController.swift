//
//  ListMusculesController.swift
//  FitnessHelper
//
//  Created by Alex on 20.12.16.
//  Copyright © 2016 AnsA. All rights reserved.
//

import UIKit
import AlamofireImage

class ListMusculesController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let cellReuseIdentifier = "cell"
    @IBOutlet var tableView: UITableView!
    var indexTraining = 0

    //var musculArray = Info.sharedObject.dictMuscules[key[indexTraining]]
    var musculArray = [[String:String]()]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        let arrayTest = Info.sharedObject.dictMuscules.keys
        let arrayTest2 = Info.sharedObject.dictMuscules.values
        
        let key = [String](Info.sharedObject.dictMuscules.keys)
        //cell.myCellLabel.text = key[indexPath.row]
        
        print(indexTraining)
        print(arrayTest)
        print(arrayTest2)
        print(key[indexTraining])
        
        let musculArray2 = Info.sharedObject.dictMuscules[key[indexTraining]]
        musculArray = Info.sharedObject.dictMuscules[key[indexTraining]] as! [[String : String]]
        
         print(musculArray2!)
         print(musculArray)

        // Do any additional setup after loading the view.
    }
    
    // number of rows in table view
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return Info.sharedObject.arrayBiceps.count
        //return Info.sharedObject.dictMuscules.keys.count
        return musculArray.count
    }
    
    // create a cell for each table view row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let key = [String](Info.sharedObject.dictMuscules.keys)
        
        let cell:TrainingCell = self.tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as! TrainingCell
        
        //cell.myView.backgroundColor = self.colors[indexPath.row]
        //cell.myImageView.af_setImage(withURL: NSURL( string:Info.sharedObject.arrayBiceps[indexPath.row]["image"]!) as! URL )
        
        let imageArray = Info.sharedObject.dictMuscules[key[indexTraining]]?.mutableArrayValue(forKey: "image")
        let imageString = imageArray?[indexPath.row]
        
        cell.myImageView.af_setImage(withURL: NSURL( string:imageString as! String) as! URL )
        
        
        //cell.myCellLabel.text = Info.sharedObject.arrayBiceps[indexPath.row]["name"]
        let nameArray = Info.sharedObject.dictMuscules[key[indexTraining]]?.mutableArrayValue(forKey: "name")
        let nameString = nameArray?[indexPath.row]
        cell.myCellLabel.text = nameString as! String?

        return cell
    }
    
    // method to run when table view cell is tapped
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You tapped cell number \(indexPath.row).")
        performSegue(withIdentifier: "InfoTrainingController", sender: indexPath.row)
    }
    
    func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // не работает
        if segue.identifier == "InfoTrainingController" {
            //let newViewController : InfoTrainingController = segue.destination as! InfoTrainingController
            //let indexPath = sender as! NSIndexPath
            //title = Info.sharedObject.items[indexPath.row]
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "InfoTrainingController" {
            let newViewController : InfoTrainingController = segue.destination as! InfoTrainingController
            newViewController.indexTrainingMuscul = sender as! Int
            newViewController.indexTraining = indexTraining
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
}
