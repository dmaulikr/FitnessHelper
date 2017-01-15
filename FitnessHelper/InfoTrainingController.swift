//
//  InfoTrainingController.swift
//  FitnessHelper
//
//  Created by Alex on 17.12.16.
//  Copyright © 2016 AnsA. All rights reserved.
//

import UIKit
import Foundation
import AlamofireImage

class InfoTrainingController: UIViewController , UICollectionViewDataSource, UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
    
    
    //let header : UICollectionView = UICollectionView()
    var label  = UILabel()
    
    @IBAction func saveItem (sender:AnyObject){
        
        let dictSave = ["indexTraining":indexTraining,"indexTrainingMuscul":indexTrainingMuscul]
        Info.sharedObject.arrayMyProgram.append(dictSave as [String : NSNumber])
        print(dictSave)
        print(Info.sharedObject.arrayMyProgram)
       //  print(Info.sharedObject.arrayMyNameProgram[addProgramInt])
        
        //collectionview.reloadData()

    }
    
    @IBOutlet var collectionview: UICollectionView!
    let reuseIdentifier = "Сell"
    
    var indexTraining = 0
    var indexTrainingMuscul = 0
    
    var addProgramBool : Bool = false
    var addProgramInt : Int = 0
    
    
     func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView
     {
     
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionElementKindSectionHeader, withReuseIdentifier: "SectionHeader", for: indexPath) as! InfoReusableHeder
        //print(Info.sharedObject.b1["name"])
        
        let key = [String](Info.sharedObject.dictMuscules.keys)
        
        let nameArray = Info.sharedObject.dictMuscules[key[indexTraining]]?.mutableArrayValue(forKey: "name")
        let nameString = nameArray?[indexTrainingMuscul]
        title = nameString as! String?
        
        
        let discriptionArray = Info.sharedObject.dictMuscules[key[indexTraining]]?.mutableArrayValue(forKey: "discription")
        let discriptionString = discriptionArray?[indexTrainingMuscul]
        header.descriptionLabel.numberOfLines = 0
        header.descriptionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
        header.descriptionLabel.text = discriptionString as! String?
        header.descriptionLabel.sizeToFit()
        
        let imageArray = Info.sharedObject.dictMuscules[key[indexTraining]]?.mutableArrayValue(forKey: "image")
        let imageString = imageArray?[indexTrainingMuscul]
        header.imageVeiw.af_setImage(withURL: NSURL( string:imageString as! String) as! URL)
        //header.imageVeiw.af_setImage(withURL: NSURL( string:Info.sharedObject.b1["image"]!) as! URL )
        
     
     return header
     }
     
    /*func collectionView(collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, atIndexPath indexPath: IndexPath) -> UICollectionReusableView
    {
        
    let header = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionElementKindSectionHeader, withReuseIdentifier: "SectionHeader", for: indexPath) as! InfoReusableHeder
        
        //self.title =
        header.headerLabel.text = "YOUR_HEADER_TEXT"
        header.descriptionLabel.text = Info.sharedObject.b1["discription"]
        header.imageVeiw.af_setImage(withURL: NSURL( string:Info.sharedObject.b1["image"]!) as! URL )
        
        return header
    }*/
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize
    {
        
        return CGSize(width: collectionView.bounds.width, height: 430.0 + label.frame.height)
        
        
    }
    

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell: HomeCollectionCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! HomeCollectionCell

        cell.backgroundColor = UIColor.cyan // make cell more visible in our example project
        
        return cell
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //let label:UILabel = UILabel(frame: CGRect(0, 0, self.view.frame.width , 10))
        //let
        label = UILabel(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: 10))
        label.numberOfLines = 0
        label.lineBreakMode = NSLineBreakMode.byWordWrapping
        //label.font = font
        let key = [String](Info.sharedObject.dictMuscules.keys)
        let discriptionArray = Info.sharedObject.dictMuscules[key[indexTraining]]?.mutableArrayValue(forKey: "discription")
        let discriptionString = discriptionArray?[indexTrainingMuscul]
        label.text = discriptionString as! String?
        label.sizeToFit()
        
        print(label.frame.height)
        collectionview.dataSource = self
        collectionview.delegate = self
        
        let layout:UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top:1,left:10,bottom:10,right:10)
        layout.minimumInteritemSpacing = 5
        layout.minimumLineSpacing = 10
        
        collectionview.collectionViewLayout = layout
        
        
    }
    
    func saveItem(){
        
        let dictSave = ["indexTraining":indexTraining,"indexTrainingMuscul":indexTrainingMuscul]
        //Info.sharedObject.dictMuscules[key[indexTraining]]?
        Info.sharedObject.arrayMyProgram.append(dictSave as [String : NSNumber])
        
        //Info.sharedObject.arrayMyNameProgram[addProgramInt]
        print(Info.sharedObject.arrayMyNameProgram[addProgramInt])
        
        //Info.sharedObject.arrayMyNameProgram[addProgramInt]
        
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
