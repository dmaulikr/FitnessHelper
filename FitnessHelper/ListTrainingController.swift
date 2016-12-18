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
    
   // @available(iOS 2.0, *)
   // public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {}

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
        return Info.sharedObject.items.count //self.items.count
    }
    
    // create a cell for each table view row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:TrainingCell = self.tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as! TrainingCell
        
        //cell.myView.backgroundColor = self.colors[indexPath.row]
        cell.myCellLabel.text = Info.sharedObject.items[indexPath.row]
       
        
        return cell
    }
    
    // method to run when table view cell is tapped
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You tapped cell number \(indexPath.row).")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
