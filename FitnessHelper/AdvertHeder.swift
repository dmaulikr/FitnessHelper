//
//  AdvertHeder.swift
//  FitnessHelper
//
//  Created by Alex on 29.01.17.
//  Copyright © 2017 AnsA. All rights reserved.
//

import UIKit

class AdvertHeder: UICollectionReusableView {
    
    @IBOutlet var avatarImage : UIImageView!
    @IBOutlet var nikLabel : UILabel!
    @IBOutlet var locatioLabel : UILabel!
    @IBOutlet var muscuLabel : UILabel!
    @IBOutlet var commentLabel : UILabel!
    @IBOutlet var numberPeoplLabel : UILabel!
    @IBOutlet weak var MusculTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var locationCoordYConstraint: NSLayoutConstraint!
    
    @IBOutlet var goBotton : UIButton!
    @IBOutlet var notGoBotton : UIButton!
    @IBOutlet var messageBotton : UIButton!
}
