//
//  CreatAdvertCollection.swift
//  FitnessHelper
//
//  Created by Alex on 19.01.17.
//  Copyright © 2017 AnsA. All rights reserved.
//

import UIKit

class CreatAdvertCollection: UIViewController , UICollectionViewDataSource, UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
    var header: CreatAdvertHeder?
    var label  = UILabel()
    var indexPathParent : IndexPath = IndexPath()
    
    
    @IBAction func saveItem (sender:AnyObject){
        self.saveItem()
//        let dictSave = ["indexTraining":indexTraining,"indexTrainingMuscul":indexTrainingMuscul]
//        Info.sharedObject.arrayMyProgram.append(dictSave as [String : NSNumber])
//        print(dictSave)
//        print(Info.sharedObject.arrayMyProgram)
        
        
        //  print(Info.sharedObject.arrayMyNameProgram[addProgramInt])
        
        //collectionview.reloadData()
        
    }
    
    @IBAction func saveAdvert (sender:AnyObject){
        self.saveItem()
    }
    
    @IBOutlet var collectionview: UICollectionView!
    let reuseIdentifier = "Сell"
    
    var indexTraining = 0
    var indexTrainingMuscul = 0
    
    var addProgramBool : Bool = false
    var addProgramInt : Int = 0
    
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView
    {
        
        header   = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionElementKindSectionHeader, withReuseIdentifier: "SectionHeader", for: indexPath) as? CreatAdvertHeder
        
        let imageName = "fon2.jpg"
        let image = UIImage(named: imageName)
        let imageView = UIImageView(image: image!)
        imageView.contentMode = UIViewContentMode.scaleAspectFill
        imageView.frame = CGRect(x: 0, y: 0, width: (header?.frame.width)!, height: (header?.frame.height)!)
        
        header?.backgroundColor = Info.sharedObject.colorFonWit
        //header?.contentMode = UIViewContentMode.scaleAspectFill //scaleAspectFill

        header?.nikLabel.text = "hause009"
        header?.nikLabel.backgroundColor = UIColor.clear
        header?.nikLabel.layer.cornerRadius = 8
        header?.nikLabel.textColor = Info.sharedObject.colorText
        
        header?.avatarImage.af_setImage(withURL: NSURL( string:"http://maxcentral.ru/wp-content/uploads/2013/08/mahi-gantelyami.jpg" ) as! URL)
        header?.commentField.placeholder = " Комментарии: Тренировка по паурлифтингу"
        header?.commentField = styleTextField(view: (header?.commentField)!)
        
        header?.MusculHeightConstraint.constant = 60
        header?.CommentHeightConstraint.constant = 60
        
        header?.musculField.placeholder = " Вид тренировки: Трицепс и бецепс"
        header?.musculField = styleTextField(view: (header?.musculField)!)
        
        header?.locatioField.placeholder = " Место тренировки"
        header?.locatioField = styleTextField(view: (header?.locatioField)!)
        
        header?.numberPeoplField.placeholder = " Сколько нужно человек:"
        header?.numberPeoplField = styleTextField(view: (header?.numberPeoplField)!)
        
        header?.saveButton.backgroundColor = Info.sharedObject.colorCell
        header?.saveButton.tintColor = Info.sharedObject.colorText
        //header?.saveButton.layer.borderWidth = 2.0
        header?.saveButton.layer.cornerRadius = 8
        //header?.saveButton.layer.borderColor = UIColor.white.cgColor
        header?.saveButton.layer.masksToBounds = true
        header?.saveButtonConstraint.constant = 60;

        return header!
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize
    {
        
        return CGSize(width: collectionView.bounds.width, height: self.view.frame.height)
        
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell: CreatAdvertCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CreatAdvertCell
        
        cell.backgroundColor = UIColor.cyan // make cell more visible in our example project
        
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()


        self.title = "Объявление"
        self.view.backgroundColor = Info.sharedObject.colorFonWit
        self.collectionview.backgroundColor = Info.sharedObject.colorFonWit
        // header?.backgroundColor = Info.sharedObject.colorFonWit

        
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
        
       // let nik = String(header?.nikLabel.text)
       let dictSave = ["ник":header?.nikLabel.text as Any as! String ,"локация":header?.locatioField.text as Any ,"количество":header?.numberPeoplField.text as Any ,"группаМышц":header?.musculField.text as Any ,"комменты":header?.commentField.text as Any] as [String : Any]
       
        Info.sharedObject.arrayMyAdvert.append(dictSave as! [String : String])
//        
        
//        let dictSave = ["indexTraining":indexTraining,"indexTrainingMuscul":indexTrainingMuscul]
//        Info.sharedObject.arrayMyProgram.append(dictSave as [String : NSNumber])
//        print(Info.sharedObject.arrayMyNameProgram[addProgramInt])
        
        //let dict = ["Количество повторений":(alertController.textFields?[0].text)!, "Вес":(alertController.textFields?[1].text)!]
        //arrayMyRepit.append(dict)
        
//        let dict = arrayMyRepit[indexPath.row]
//        
//        cell.myLabelRepet.text = dict["Количество повторений"]
//        cell.myLabelHeft.text = dict["Вес"]

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func styleTextField (view:UITextField) -> UITextField
    {
                view.backgroundColor = UIColor.white
                view.layer.cornerRadius = 8
                view.layer.borderColor = Info.sharedObject.colorText.cgColor
                view.layer.masksToBounds = true
        return view
    }
    
    
}
