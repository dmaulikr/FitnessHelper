//
//  AdvertCollection.swift
//  FitnessHelper
//
//  Created by Alex on 18.01.17.
//  Copyright © 2017 AnsA. All rights reserved.
//

import UIKit

class AdvertCollection: UIViewController , UICollectionViewDataSource, UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
    
    var header: AdvertHeder = AdvertHeder()
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
        
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionElementKindSectionHeader, withReuseIdentifier: "SectionHeader", for: indexPath) as! AdvertHeder

        let imageName = "fon2.jpg"
        let image = UIImage(named: imageName)
        let imageView = UIImageView(image: image!)
        imageView.contentMode = UIViewContentMode.scaleAspectFill
        //imageView.frame = CGRect(x: 0, y: 0, width: (header?.frame.width)!, height: (header.frame.height)!)
        
        header.backgroundColor = Info.sharedObject.colorFonWit
        //header?.contentMode = UIViewContentMode.scaleAspectFill //scaleAspectFill
        
        header.nikLabel.text = "Ник: hause009"
        header.nikLabel.backgroundColor = UIColor.clear
        header.nikLabel.layer.cornerRadius = 8
        header.nikLabel.textColor = Info.sharedObject.colorText
        
        header.avatarImage.af_setImage(withURL: NSURL( string:"http://maxcentral.ru/wp-content/uploads/2013/08/mahi-gantelyami.jpg" ) as! URL)
        header.avatarImage.layer.cornerRadius = 8
        header.avatarImage.layer.masksToBounds = true
        
        header.commentLabel.text = "Комментарии: Тренировка по паурлифтингу с активной кардиоонагрузкой"
        header.commentLabel = styleTextLabel(label: header.commentLabel)
        
       
        //header.CommentHeightConstraint.constant = 60
        
        header.muscuLabel.text = "Вид тренировки: Трицепс и бецепс"
        header.muscuLabel = styleTextLabel(label: (header.muscuLabel)!)
        
        
        header.locatioLabel = styleTextLabel(label: (header.locatioLabel)!)
//        header.locatioLabel.numberOfLines = 0
//        header.locatioLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
        header.locatioLabel.text = "Место тренировки: Фитнес центр на пискаревском"
//        header.locatioLabel.sizeToFit()
        
         //header.locationCoordYConstraint.constant = header.avatarImage.frame.height + header.avatarImage.frame.origin.y - 20
        
        header.numberPeoplLabel.text = "Сколько нужно человек: 1"
        header.numberPeoplLabel = styleTextLabel(label: (header.numberPeoplLabel)!)
        
        header.goBotton.setTitle("Иду", for: .normal)
        header.goBotton = styleButton(button: (header.goBotton)!)
        header.goBotton.backgroundColor = UIColor.orange
        
        header.notGoBotton.setTitle("Не иду", for: .normal)
        header.notGoBotton = styleButton(button: (header.notGoBotton)!)
        
        header.messageBotton.setTitle("Сообщение", for: .normal)
        header.messageBotton = styleButton(button: (header.messageBotton)!)
 

        
        
        //let key = [String](Info.sharedObject.dictMuscules.keys)
        
//        let nameArray = Info.sharedObject.dictMuscules[key[indexTraining]]?.mutableArrayValue(forKey: "name")
//        let nameString = nameArray?[indexTrainingMuscul]
//        title = nameString as! String?
//        
//        
//        let discriptionArray = Info.sharedObject.dictMuscules[key[indexTraining]]?.mutableArrayValue(forKey: "discription")
//        let discriptionString = discriptionArray?[indexTrainingMuscul]
//        header.descriptionLabel.numberOfLines = 0
//        header.descriptionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
//        header.descriptionLabel.text = discriptionString as! String?
//        header.descriptionLabel.sizeToFit()
//        
//        let imageArray = Info.sharedObject.dictMuscules[key[indexTraining]]?.mutableArrayValue(forKey: "image")
//        let imageString = imageArray?[indexTrainingMuscul]
//        header.imageVeiw.af_setImage(withURL: NSURL( string:imageString as! String) as! URL)
        
        
        return header
    }
    
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
    
    func styleTextLabel (label:UILabel) -> UILabel
    {
        //label.tintColor = Info.sharedObject.colorText
        label.backgroundColor = UIColor.clear
        label.textColor = Info.sharedObject.colorText
        
        label.numberOfLines = 0
        label.lineBreakMode = NSLineBreakMode.byWordWrapping
        label.sizeToFit()

        return label
    }

    func styleButton (button:UIButton) -> UIButton
    {
        button.backgroundColor = Info.sharedObject.colorCell
        button.tintColor = Info.sharedObject.colorText
        button.layer.cornerRadius = 8
        button.layer.borderWidth = 2.0
        button.layer.borderColor = Info.sharedObject.colorText.cgColor
        button.layer.masksToBounds = true
        
        //header.saveButtonConstraint.constant = 60;
        
        return button
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
