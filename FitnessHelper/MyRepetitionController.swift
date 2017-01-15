//
//  MyRepetitionController.swift
//  FitnessHelper
//
//  Created by Alex on 15.01.17.
//  Copyright © 2017 AnsA. All rights reserved.
//

import UIKit

class MyRepetitionController: UIViewController ,UITableViewDelegate, UITableViewDataSource {
    
    var alertController : UIAlertController = UIAlertController()
    
    let cellReuseIdentifier = "cell"
    @IBOutlet var tableView: UITableView!
    
    //var arrDict = [[String:String]()]
    var arrayMyRepit = [[String:String]()]
    
    var arrCategor = [String]()
    var arrMuscul = [String]()
    
    
    @IBAction func addNewProgram(_ sender: UIBarButtonItem) {
        
        alertController = UIAlertController(title: "Новая запись", message: nil, preferredStyle: .alert)
        
        let defaultAction2 = UIAlertAction(title: "Закрыть", style: .cancel, handler: nil)
        alertController.addAction(defaultAction2)
        
        alertController.addTextField { (textField : UITextField!) -> Void in
            textField.placeholder = "Количество повторений"
        }
        alertController.addTextField { (textField : UITextField!) -> Void in
            textField.placeholder = "Вес"
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
            
            
            let dict = ["Количество повторений":(alertController.textFields?[0].text)!, "Вес":(alertController.textFields?[1].text)!]
            arrayMyRepit.append(dict)
            tableView.reloadData()
        }

        print(arrayMyRepit)
        
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
        
        return arrayMyRepit.count //arrCategor.count
    }
    
    // create a cell for each table view row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:MyRepetCell = self.tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as! MyRepetCell
        
        let dict = arrayMyRepit[indexPath.row]
        
        cell.myLabelRepet.text = dict["Количество повторений"]
        cell.myLabelHeft.text = dict["Вес"]
        
        return cell
    }
    
    // method to run when table view cell is tapped
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //        print("You tapped cell number \(indexPath.row).")
        performSegue(withIdentifier: "ListTrainingController", sender: indexPath.row)
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
