//
//  InfoTrainingController.swift
//  FitnessHelper
//
//  Created by Alex on 17.12.16.
//  Copyright © 2016 AnsA. All rights reserved.
//

import UIKit
import Foundation

class InfoTrainingController: UIViewController , UICollectionViewDataSource, UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
    
     private func collectionView(collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, atIndexPath indexPath: IndexPath) -> InfoReusableHeder
    {
        
    let header = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionElementKindSectionHeader, withReuseIdentifier: "SectionHeader", for: indexPath) as! InfoReusableHeder
        
        header.headerLabel.text = "YOUR_HEADER_TEXT"
        
        return header
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    // make a cell for each cell index path
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell: HomeCollectionCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! HomeCollectionCell

        cell.backgroundColor = UIColor.cyan // make cell more visible in our example project
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // handle tap events
        print("You selected cell #\(indexPath.item)!")

        
        performSegue(withIdentifier: "ListTrainingController", sender: 1)
    }
    
    func collectionView(collectionView: UICollectionView, selectedItemIndex: NSIndexPath) {
        self.performSegue(withIdentifier: "ListTrainingController", sender: self)
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
