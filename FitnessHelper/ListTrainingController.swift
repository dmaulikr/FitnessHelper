//
//  ListTrainingController.swift
//  FitnessHelper
//
//  Created by Alex on 12.12.16.
//  Copyright © 2016 AnsA. All rights reserved.
//

import UIKit
import Foundation

class ListTrainingController : UIViewController , UITableViewDelegate, UITableViewDataSource {
    
    let cellReuseIdentifier = "cell"
    @IBOutlet var tableView: UITableView!
    
      var text1 : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        print(text1)

        // Do any additional setup after loading the view.
    }
    
    // number of rows in table view
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return Info.sharedObject.items.count //self.items.count
        return Info.sharedObject.dictMuscules.keys.count
    }
    
    // create a cell for each table view row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:TrainingCell = self.tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as! TrainingCell
        //cell.myView.backgroundColor = self.colors[indexPath.row]
        //cell.myCellLabel.text = Info.sharedObject.items[indexPath.row]
        
        let key = [String](Info.sharedObject.dictMuscules.keys)
        cell.myCellLabel.text = key[indexPath.row]
  
    
        return cell
    }
    
    // method to run when table view cell is tapped
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You tapped cell number \(indexPath.row).")
        performSegue(withIdentifier: "ListMusculesController", sender: indexPath.row)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ListMusculesController" {
            let newViewController : ListMusculesController = segue.destination as! ListMusculesController
            newViewController.indexTraining = sender as! Int
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
