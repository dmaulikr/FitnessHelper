//
//  AllAdvertController.swift
//  FitnessHelper
//
//  Created by Alex on 17.01.17.
//  Copyright © 2017 AnsA. All rights reserved.
//

import UIKit

class AllAdvertController: UIViewController ,UITableViewDelegate, UITableViewDataSource {
    
    var alertController : UIAlertController = UIAlertController()
    
    let cellReuseIdentifier = "cell"
    @IBOutlet var tableView: UITableView!
    
    //var arrDict = [[String:String]()]
    var arrayMyRepit = [[String:String]()]
    
    var arrCategor = [String]()
    var arrMuscul = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrCategor = ["Бицепс", "Бицепс", "Трицепс","Ноги"]
        arrMuscul = ["Подъем штанги на бицепс стоя","Молотки с гантелями","Отжимания на брусьях","Приседания со штангой"]
        
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 540
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return Info.sharedObject.items.count //self.items.count
        
        return 5//arrayMyRepit.count //arrCategor.count
    }
    
    // create a cell for each table view row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: AllAdvertCell  = self.tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as! AllAdvertCell
        
//        let dict = arrayMyRepit[indexPath.row]
//        
//        cell.myLabelRepet.text = dict["Количество повторений"]
//        cell.myLabelHeft.text = dict["Вес"]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        
        return 120
    }
    
    // method to run when table view cell is tapped
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //        print("You tapped cell number \(indexPath.row).")
        performSegue(withIdentifier: "AdvertCollection", sender: indexPath.row)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AdvertCollection" {
            let newViewController : AdvertCollection = segue.destination as! AdvertCollection

        }
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
