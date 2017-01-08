//
//  ViewController.swift
//  FitnessHelper
//
//  Created by Alex on 29.11.16.
//  Copyright © 2016 AnsA. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
    
    
    let reuseIdentifier = "Сell" // also enter this string as the cell identifier in the storyboard
    var items = ["Справочная информация по группа мышц", "Мои программы", "Найти бро для тренировок", "Базовые программы тренировок", "Мой профиль", "Статистика", "Новости спорта","Настройки",] //"7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48"]
    
    //@IBOutlet weak var collection : UICollectionView!
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.items.count
    }
    
    // make a cell for each cell index path
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell: HomeCollectionCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! HomeCollectionCell
        
        // Use the outlet in our custom class to get a reference to the UILabel in the cell
//        cell.myLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
//        cell.myLabel.numberOfLines = 0
        cell.myLabel.text = self.items[indexPath.item]
        cell.myLabel.adjustsFontSizeToFitWidth = true
       // cell.myLabel.sizeToFit()
        //cell.myLabel.setNeedsDisplay()
        cell.backgroundColor = UIColor.cyan // make cell more visible in our example project
        
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
        
        
               // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ListTrainingController"
        {
            //let newViewController : ListTrainingController = segue.destination as! ListTrainingController
            //let indexPath = sender as! NSIndexPath
            //newViewController.text1 = "cell" +  String(describing: indexPath)
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

