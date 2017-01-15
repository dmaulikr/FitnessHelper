//
//  MySelectMusculController.swift
//  FitnessHelper
//
//  Created by Alex on 10.01.17.
//  Copyright © 2017 AnsA. All rights reserved.
//

import UIKit

class MySelectMusculController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var alertController : UIAlertController = UIAlertController()
    
    let cellReuseIdentifier = "cell"
    @IBOutlet var tableView: UITableView!
    
    var arrDict = [[String:String]()]
    
    var arrCategor = [String]()
    var arrMuscul = [String]()
    
    
    @IBAction func addNewProgram(_ sender: UIBarButtonItem) {
        
        alertController = UIAlertController(title: "Новая программа", message: "Введите описание программы", preferredStyle: .alert)
        
        let defaultAction2 = UIAlertAction(title: "Закрыть", style: .cancel, handler: nil)
        alertController.addAction(defaultAction2)
        
        alertController.addTextField { (textField : UITextField!) -> Void in
            textField.placeholder = "Название"
        }
        alertController.addTextField { (textField : UITextField!) -> Void in
            textField.placeholder = "Описание"
        }
        
        let yesAction = UIAlertAction(
        title: "Сохранить", style: UIAlertActionStyle.default) {
            (action) -> Void in
            print("Сохранить")
            self.creatProgram()
        }
        alertController.addAction(yesAction)
        
        present(alertController, animated: true, completion: nil)
        
        
    }
    
    
    func creatProgram() {
        
        print(alertController.textFields?[0].text ?? UITextField())
        print(alertController.textFields?[1].text ?? UITextField())
        
        if ((alertController.textFields?[0].text?.characters.count)! != 0 || (alertController.textFields?[1].text?.characters.count)! != 0)
        {
            let dictMuscul = ["indexTraining":1,"indexTrainingMuscul":1]
            //arrDict.append(dictMuscul as! [String : String])
            
            
            let dict = ["Название":(alertController.textFields?[0].text)!, "Описание":(alertController.textFields?[1].text)!]
            Info.sharedObject.arrayMyNameProgram.append(dict)
            tableView.reloadData()
        }
        
        
        //Info.sharedObject.arrayMyNameProgram["Название"] = alertController.textFields?[0].text
        //Info.sharedObject.arrayMyNameProgram["Описание"] = alertController.textFields?[1].text
        
        print(Info.sharedObject.arrayMyNameProgram)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrCategor = ["Бицепс", "Бицепс", "Трицепс","Ноги"]
        arrMuscul = ["Подъем штанги на бицепс стоя","Молотки с гантелями","Отжимания на брусьях","Приседания со штангой"]
        
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return Info.sharedObject.items.count //self.items.count
        return arrCategor.count
    }
    
    // create a cell for each table view row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:MySelectMusculCell = self.tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as! MySelectMusculCell
        
        //let dict = Info.sharedObject.arrayMyNameProgram[indexPath.row]
        
        cell.myLabelName.text = arrCategor[indexPath.row]
        cell.myLabelDiscript.text = arrMuscul [indexPath.row]
        
        return cell
    }
    
    // method to run when table view cell is tapped
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //        print("You tapped cell number \(indexPath.row).")
        performSegue(withIdentifier: "MyRepetitionController", sender: indexPath.row)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "MyRepetitionController" {
            let newViewController : MyRepetitionController = segue.destination as! MyRepetitionController
            //newViewController.addProgramInt = sender as! Int
            //newViewController.addProgramBool = true
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
