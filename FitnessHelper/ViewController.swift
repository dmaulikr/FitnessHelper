//
//  ViewController.swift
//  FitnessHelper
//
//  Created by Alex on 29.11.16.
//  Copyright © 2016 AnsA. All rights reserved.
//

import UIKit
import Realm
import RealmSwift

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collection: UICollectionView!
    
    let reuseIdentifier = "Сell" // also enter this string as the cell identifier in the storyboard
    var items = ["Справочная информация по группа мышц", "Мои программы", "Найти бро для тренировок", "Базовые программы тренировок", "Мой профиль", "Статистика", "Новости спорта","Настройки",] //"7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48"]
    
    //@IBOutlet weak var collection : UICollectionView!
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.items.count
    }
    
    // make a cell for each cell index path
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell: HomeCollectionCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! HomeCollectionCell
        
        let color = UIColor(red:35/255.0,green:37/255.0,blue:53/255.0,alpha:1.0) //UIColor.white.cgColor  //34 39 51
        cell.backgroundColor = color  //UIColor(patternImage: UIImage(named:"fonMin.jpg")!);
        
        cell.myLabel.numberOfLines = 0
        cell.myLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
        cell.myLabel.text = self.items[indexPath.item]
        cell.myLabel.tintColor = UIColor.white
        cell.myLabel.textColor = UIColor.white
        
        cell.layer.borderWidth = 2.0
        cell.layer.cornerRadius = 8
        cell.layer.borderColor = UIColor.white.cgColor
        cell.layer.masksToBounds = true
        //cell.myLabel.adjustsFontSizeToFitWidth = true
       // cell.myLabel.sizeToFit()
        //cell.myLabel.setNeedsDisplay()
        //cell.backgroundColor = UIColor.cyan // make cell more visible in our example project
        
        return cell
    }
    
    // MARK: - UICollectionViewDelegate protocol
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // handle tap events
        print("You selected cell #\(indexPath.item)!")
        
        //performSegue(withIdentifier: "ListTrainingController", sender: self)
        //self.performSegue(withIdentifier: "ListTrainingController", sender: self)
        //self.performSegue(withIdentifier: "ListTrainingController", sender: self)
        //let cell = collectionView.cellForItem(at: indexPath)
        //self.performSegue(withIdentifier: "ListTrainingController", sender: cell)
        
        /*
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "ListTrainingController") else {
            print("View controller Six not found")
            return
        }
        navigationController?.pushViewController(vc, animated: true)*/
        if indexPath.item == 1 {
            //self.getMyProgram()
            performSegue(withIdentifier: "MyProgramController", sender: 1)
        }
        else if indexPath.item == 2 {
            performSegue(withIdentifier: "SelectVariatController", sender: 2)
        }
        else{
            
         performSegue(withIdentifier: "ListTrainingController", sender: 1)
        }
    }
    
    func collectionView(collectionView: UICollectionView, selectedItemIndex: NSIndexPath) {
        self.performSegue(withIdentifier: "ListTrainingController", sender: self)
    }
    
//    func collectionView(collection: UICollectionView, selectedItemIndex: NSIndexPath)
//    {
//        //self.performSegue(withIdentifier: "ListTrainingController", sender: self)
//    }
    func getMyProgram() {
        //работает но пока не нужен, переход без нав бара
        let storyb = UIStoryboard(name: "Main", bundle: nil)
        let initialVC = storyb.instantiateViewController(withIdentifier: "MyProgramController")
        initialVC.title = "Моя программа тренировок"
        self.present(initialVC, animated: false, completion: nil)
    }
    
    
//    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
//        let itemWidth = 100
//        let itemHeight = 100
//        return CGSize(width: itemWidth, height: itemHeight)
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UINavigationBar.appearance().barTintColor = UIColor(red: 46.0/255.0, green: 14.0/255.0, blue: 74.0/255.0, alpha: 1.0)
        UINavigationBar.appearance().tintColor = UIColor.white
        UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName : UIColor.white]
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named:"fon.jpg")!);
        self.collection.backgroundColor = UIColor(patternImage: UIImage(named:"fon.jpg")!);

        
               // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ListTrainingController"
        {
            //let newViewController : ListTrainingController = segue.destination as! ListTrainingController
            //let indexPath = sender as! NSIndexPath
            //newViewController.text1 = "cell" +  String(describing: indexPath)
        }
        else if segue.identifier == "SelectVariatController"
        {
        
        }
        else if segue.identifier == "MyProgramController"
        {
            
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

