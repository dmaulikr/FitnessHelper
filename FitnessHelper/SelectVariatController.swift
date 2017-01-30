//
//  SelectVariatController.swift
//  FitnessHelper
//
//  Created by Alex on 16.01.17.
//  Copyright © 2017 AnsA. All rights reserved.
//

import UIKit

class SelectVariatController: UIViewController , UICollectionViewDataSource, UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collection: UICollectionView!
    
    let reuseIdentifier = "Сell" // also enter this string as the cell identifier in the storyboard
    var items = ["Все объявления", "Подать Объявление", "Мои объявления", "История"]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.items.count
    }
    
    // make a cell for each cell index path
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell: SelectVariatCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! SelectVariatCell
        
        cell.backgroundColor = Info.sharedObject.colorCell
        
        cell.myLabel.numberOfLines = 0
        cell.myLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
        cell.myLabel.text = self.items[indexPath.item]
        cell.myLabel.textColor = Info.sharedObject.colorText
        
        cell.layer.borderWidth = 2.0
        cell.layer.cornerRadius = 8
        cell.layer.borderColor = Info.sharedObject.colorText.cgColor
        cell.layer.masksToBounds = true

        return cell
    }
    
     func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // handle tap events
        print("You selected cell #\(indexPath.item)!")
        
        if indexPath.item == 0 {
            //self.getMyProgram()
            performSegue(withIdentifier: "AllAdvertController", sender: 0)
        }
        else if indexPath.item == 1 {
            performSegue(withIdentifier: "CreatAdvertCollection", sender: 1)
        }
        else{
            
            performSegue(withIdentifier: "AllAdvertController", sender: 2)
        }
    }
    
    func collectionView(collectionView: UICollectionView, selectedItemIndex: NSIndexPath) {
        self.performSegue(withIdentifier: "ListTrainingController", sender: self)
    }
   
    func getMyProgram() {
        //работает но пока не нужен, переход без нав бара
        let storyb = UIStoryboard(name: "Main", bundle: nil)
        let initialVC = storyb.instantiateViewController(withIdentifier: "MyProgramController")
        initialVC.title = "Моя программа тренировок"
        self.present(initialVC, animated: false, completion: nil)
    }
    
      override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Активность"
        
        self.view.backgroundColor = Info.sharedObject.colorFon
        self.collection.backgroundColor = Info.sharedObject.colorFon
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AllAdvertController"
        {
            //let newViewController : ListTrainingController = segue.destination as! ListTrainingController
            //let indexPath = sender as! NSIndexPath
            //newViewController.text1 = "cell" +  String(describing: indexPath)
        }
        else if segue.identifier == "CreatAdvertCollection"
        {
            
        }
        else if segue.identifier == "AllAdvertController"
        {
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 

}
