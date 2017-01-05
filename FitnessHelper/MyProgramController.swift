//
//  MyProgramController.swift
//  FitnessHelper
//
//  Created by Alex on 24.12.16.
//  Copyright © 2016 AnsA. All rights reserved.
//

import UIKit

class MyProgramController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var navBar: UINavigationBar = UINavigationBar()
    var alertController : UIAlertController = UIAlertController()
    
    let cellReuseIdentifier = "cell"
    @IBOutlet var tableView: UITableView!

    
    @IBAction func addNewProgram(_ sender: UIBarButtonItem) {
        
        //let
        alertController = UIAlertController(title: "Новая программа", message: "Введите описание программы", preferredStyle: .alert)
        
        
        //посмотреть http://www.informit.com/articles/article.aspx?p=2258413&seqNum=3 
        //let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        //alertController.addAction(defaultAction)
        
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
        
        let nameString : String = (alertController.textFields?[0].text)!
        let descriptString : String = (alertController.textFields?[1].text)!
        
        if (nameString.characters.count != 0 || descriptString.characters.count != 0)
        {
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
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return Info.sharedObject.items.count //self.items.count
        return Info.sharedObject.arrayMyNameProgram.count
    }
    
    // create a cell for each table view row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:MyProgramCell = self.tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as! MyProgramCell
        
        let dict = Info.sharedObject.arrayMyNameProgram[indexPath.row]
        
        cell.myLabelName.text = dict["Название"]//"Тренировка \(indexPath.row)"
        cell.myLabelDiscript.text = dict["Описание"]
        
        return cell
    }

    // method to run when table view cell is tapped
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print("You tapped cell number \(indexPath.row).")
       performSegue(withIdentifier: "ListTrainingController", sender: indexPath.row)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ListTrainingController" {
            let newViewController : ListTrainingController = segue.destination as! ListTrainingController
            //newViewController.indexTraining = sender as! Int
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func setNavBarToTheView() {
        self.navBar.frame = CGRect(x:0, y:0, width:self.view.frame.width , height:50)  //CGRectMake(0, 0, 320, 50)  // Here you can set you Width and Height for your navBar
        self.navBar.backgroundColor = (UIColor.black)
        self.view.addSubview(navBar)
    }
}

/*
 // MARK: - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
 // Get the new view controller using segue.destinationViewController.
 // Pass the selected object to the new view controller.
 }
 */

//}
