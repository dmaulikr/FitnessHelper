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
        
        return 5//arrayMyRepit.count //arrCategor.count
    }
    
    // create a cell for each table view row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: AllAdvertCell  = self.tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as! AllAdvertCell
        
        //cell.backgroundColor = Info.sharedObject.colorCell  //UIColor(patternImage: UIImage(named:"fonMin.jpg")!);
        
        cell.locatioLabel.numberOfLines = 0
        cell.locatioLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
        cell.locatioLabel.text = "Место: Фитнес хаус на пискаревском"
        cell.locatioLabel.tintColor = Info.sharedObject.colorText
        cell.locatioLabel.textColor = Info.sharedObject.colorText
        cell.locatioLabel.backgroundColor = UIColor.clear
        
        cell.muscuLabel.numberOfLines = 0
        cell.muscuLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
        cell.muscuLabel.text = "Вид тренировки: Руки - Трицепс бецепс + Грудные"
        cell.muscuLabel.tintColor = Info.sharedObject.colorText
        cell.muscuLabel.textColor = Info.sharedObject.colorText
        cell.muscuLabel.backgroundColor = UIColor.clear
        
        //cellHeight = cell.muscuLabel.frame.size.height + cell.muscuLabel.frame.origin.y
        
        let par1 : CGFloat = CGFloat (cell.muscuLabel.frame.size.height)
        let par2 : CGFloat = CGFloat ( cell.muscuLabel.frame.origin.y)
        cellHeight =  par1 + par2

        cell.nikLabel.tintColor = Info.sharedObject.colorText
        cell.nikLabel.textColor = Info.sharedObject.colorText
        cell.nikLabel.backgroundColor = UIColor.clear
        
        cell.avatarImage.layer.borderWidth = 2.0
        cell.avatarImage.layer.cornerRadius = 8
        cell.avatarImage.layer.borderColor = Info.sharedObject.colorText.cgColor
        cell.avatarImage.layer.masksToBounds = true

        cell.contentView.backgroundColor = Info.sharedObject.colorCell
        cell.selectedBackgroundView?.backgroundColor = UIColor.clear
        cell.layer.borderWidth = 2.0
        cell.layer.cornerRadius = 8
        cell.layer.borderColor = Info.sharedObject.colorText.cgColor
        cell.layer.masksToBounds = true

        
//        let dict = arrayMyRepit[indexPath.row]
//        
//        cell.myLabelRepet.text = dict["Количество повторений"]
//        cell.myLabelHeft.text = dict["Вес"]
        
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
