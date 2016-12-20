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
    
    @IBOutlet var collectionview: UICollectionView!
    let reuseIdentifier = "Сell"
    
    
//    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> InfoReusableHeder
//    {
//        
//        
//        let header = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionElementKindSectionHeader, withReuseIdentifier: "SectionHeader", for: indexPath) as! InfoReusableHeder
//        
//        //self.title =
//        header.headerLabel.text = "YOUR_HEADER_TEXT"
//        header.descriptionLabel.text = Info.sharedObject.b1["discription"]
//        header.imageVeiw.af_setImage(withURL: NSURL( string:Info.sharedObject.b1["image"]!) as! URL )
//        
//        
//        return header
//    }
    
    
     func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView
     {
     
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionElementKindSectionHeader, withReuseIdentifier: "SectionHeader", for: indexPath) as! InfoReusableHeder
        //print(Info.sharedObject.b1["name"])
        
        title = Info.sharedObject.b1["name"]
                //header.headerLabel.text = "YOUR_HEADER_TEXT"
        header.descriptionLabel.text = (Info.sharedObject.b1["discription"])!
                header.imageVeiw.af_setImage(withURL: NSURL( string:Info.sharedObject.b1["image"]!) as! URL )
        
     
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
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize
    {
        return CGSize(width: collectionView.bounds.width, height: 450.0)
        
        
    }
    

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell: HomeCollectionCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! HomeCollectionCell

        cell.backgroundColor = UIColor.cyan // make cell more visible in our example project
        
        return cell
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionview.dataSource = self
        collectionview.delegate = self
        
        let layout:UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top:1,left:10,bottom:10,right:10)
        layout.minimumInteritemSpacing = 5
        layout.minimumLineSpacing = 10
        
        collectionview.collectionViewLayout = layout
        
        
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
