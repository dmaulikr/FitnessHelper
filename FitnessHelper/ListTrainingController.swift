//
//  ListTrainingController.swift
//  FitnessHelper
//
//  Created by Alex on 12.12.16.
//  Copyright © 2016 AnsA. All rights reserved.
//

import UIKit
import Foundation
import AlamofireImage

class ListTrainingController : UIViewController, UICollectionViewDataSource, UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
    
    let cellReuseIdentifier = "cell"
    //@IBOutlet var tableView: UITableView!
    @IBOutlet weak var collection: UICollectionView!
    var addProgramBool : Bool = false
    var addProgramInt : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Категории"
        
        self.view.backgroundColor = Info.sharedObject.colorFon
        self.view.backgroundColor = Info.sharedObject.colorFon
        self.collection.backgroundColor = Info.sharedObject.colorFon
        

        // Do any additional setup after loading the view.
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Info.sharedObject.dictMuscules.keys.count
    }
    

    /*
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:TrainingCell = self.tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as! TrainingCell
        
        let key = [String](Info.sharedObject.dictMuscules.keys)
        cell.myCellLabel.text = key[indexPath.row]
  
        cell.myCellLabel.tintColor = Info.sharedObject.colorText
        cell.myCellLabel.textColor = Info.sharedObject.colorText
        
        let url = NSURL (string: "http://iq-body.ru/uploads/fx2/263x263/training_category/original/xbiceps.gif.pagespeed.ic.ptTzYIqsx_.png");
        //let imageString : NSURL = "http://iq-body.ru/uploads/fx2/263x263/training_category/original/xbiceps.gif.pagespeed.ic.ptTzYIqsx_.png"
        cell.myImageView.af_setImage(withURL:(withURL: url as! URL))

        cell.layer.borderWidth = 2.0
        cell.layer.cornerRadius = 8
        cell.layer.borderColor = Info.sharedObject.colorText.cgColor
        cell.layer.masksToBounds = true
        
        cell.contentView.backgroundColor = Info.sharedObject.colorCell
        cell.selectedBackgroundView?.backgroundColor = UIColor.clear
        
        return cell
    }*/
    
    // make a cell for each cell index path
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell: ListTrainingCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! ListTrainingCell
        
        let key = [String](Info.sharedObject.dictMuscules.keys)
        cell.myCellLabel.text = key[indexPath.row]
        
        cell.myCellLabel.tintColor = Info.sharedObject.colorText
        cell.myCellLabel.textColor = Info.sharedObject.colorText
        
        //let nameArray = Info.sharedObject.arrayBiceps[indexPath.row]["categoryimage"]
        //let nameString = nameArray?[indexPath.row]
        //cell.myCellLabel.text = nameString as! String?
        
        let url = NSURL (string: Info.sharedObject.itemsImages[indexPath.row])
        cell.myImageView.af_setImage(withURL:(withURL: url as! URL))
        
        cell.layer.borderWidth = 2.0
        cell.layer.cornerRadius = 8
        cell.layer.borderColor = Info.sharedObject.colorText.cgColor
        cell.layer.masksToBounds = true
        
        cell.contentView.backgroundColor = Info.sharedObject.colorCell
        cell.selectedBackgroundView?.backgroundColor = UIColor.clear

        
        return cell
    }
    

    

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath){
    //func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You tapped cell number \(indexPath.row).")
        performSegue(withIdentifier: "ListMusculesController", sender: indexPath.row)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ListMusculesController" {
            let newViewController : ListMusculesController = segue.destination as! ListMusculesController
            newViewController.indexTraining = sender as! Int
            newViewController.addProgramInt = sender as! Int
            newViewController.addProgramBool = true
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
