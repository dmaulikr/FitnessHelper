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
    var cellHeight : CGFloat = 0
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
        
        self.view.backgroundColor = Info.sharedObject.colorFon
        self.tableView.backgroundColor = Info.sharedObject.colorFon
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 540
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return Info.sharedObject.items.count //self.items.count
        
        return Info.sharedObject.arrayMyAdvert.count//arrayMyRepit.count //arrCategor.count
    }
    
    // create a cell for each table view row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: AllAdvertCell  = self.tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as! AllAdvertCell
        
        let dict = Info.sharedObject.arrayMyAdvert[0]
        //header.nikLabel.text = "Ник: " + dict["ник"]!

        cell.locatioLabel.numberOfLines = 0
        cell.locatioLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
        //cell.locatioLabel.text = "Место: Фитнес хаус на пискаревском"
        cell.locatioLabel.text = "Место: " + dict["локация"]!
        cell.locatioLabel.textColor = Info.sharedObject.colorText
        cell.locatioLabel.backgroundColor = UIColor.clear
        
        cell.muscuLabel.numberOfLines = 0
        cell.muscuLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
        //cell.muscuLabel.text = "Вид тренировки: Руки - Трицепс бецепс + Грудные"
        cell.muscuLabel.text = "Вид тренировки: " + dict["группаМышц"]!
        cell.muscuLabel.textColor = Info.sharedObject.colorText
        cell.muscuLabel.backgroundColor = UIColor.clear
        
        //cellHeight = cell.muscuLabel.frame.size.height + cell.muscuLabel.frame.origin.y
        
        let par1 : CGFloat = CGFloat (cell.muscuLabel.frame.size.height)
        let par2 : CGFloat = CGFloat ( cell.muscuLabel.frame.origin.y)
        cellHeight =  par1 + par2 + 15

        cell.nikLabel.textColor = Info.sharedObject.colorText
        cell.nikLabel.backgroundColor = UIColor.clear
        cell.nikLabel.text = "Ник: " + dict["ник"]!

        cell.avatarImage.af_setImage(withURL: NSURL( string:dict["аватарка"]! ) as! URL)
        cell.avatarImage.layer.borderWidth = 2.0
        cell.avatarImage.layer.cornerRadius = 8
        cell.avatarImage.layer.borderColor = Info.sharedObject.colorText.cgColor
        cell.avatarImage.layer.masksToBounds = true

        cell.contentView.backgroundColor = Info.sharedObject.colorFon
        cell.selectedBackgroundView?.backgroundColor = UIColor.clear
        
        cell.parentViewHieghtConstraint.constant = cellHeight
        cell.parentView.backgroundColor = Info.sharedObject.colorCell
        cell.parentView.layer.borderWidth = 2.0
        cell.parentView.layer.cornerRadius = 8
        cell.parentView.layer.borderColor = Info.sharedObject.colorText.cgColor
        cell.parentView.layer.masksToBounds = true
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        //let Height : Int = cellHeight + 10
        return CGFloat(cellHeight)+10//CGFloat(Height)
    }
    
    // method to run when table view cell is tapped
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //        print("You tapped cell number \(indexPath.row).")
        performSegue(withIdentifier: "AdvertCollection", sender: indexPath.row)
        
        if indexPath.item == 1 {
            //self.getMyProgram()
            performSegue(withIdentifier: "MyProgramController", sender: 1)
        }
        else if indexPath.item == 2 {
            performSegue(withIdentifier: "SelectVariatController", sender: 2)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AdvertCollection" {
            //let newViewController : AdvertCollection = segue.destination as! AdvertCollection

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
