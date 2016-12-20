//
//  ListMusculesController.swift
//  FitnessHelper
//
//  Created by Alex on 20.12.16.
//  Copyright © 2016 AnsA. All rights reserved.
//

import UIKit

class ListMusculesController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let cellReuseIdentifier = "cell"
    @IBOutlet var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        print(Info.sharedObject.arrayBiceps[0])

        // Do any additional setup after loading the view.
    }
    
    // number of rows in table view
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Info.sharedObject.items.count //self.items.count
    }
    
    // create a cell for each table view row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:TrainingCell = self.tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as! TrainingCell
        
        //cell.myView.backgroundColor = self.colors[indexPath.row]
        cell.myCellLabel.text = Info.sharedObject.items[indexPath.row]
        //let per = Info.sharedObject.b1["name"]
        //print(per)
        
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
            let newViewController : InfoTrainingController = segue.destination as! InfoTrainingController
            let indexPath = sender as! NSIndexPath
            title = Info.sharedObject.items[indexPath.row]
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "InfoTrainingController" {
            //let newViewController : InfoTrainingController = segue.destination as! InfoTrainingController
            //let indexPath = sender as! NSIndexPath
            //title = Info.sharedObject.items[indexPath.row]
            //newViewController.text1 = "cell" +  String(describing: indexPath)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
}
