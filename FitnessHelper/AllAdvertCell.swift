//
//  AllAdvertCell.swift
//  FitnessHelper
//
//  Created by Alex on 17.01.17.
//  Copyright © 2017 AnsA. All rights reserved.
//

import UIKit

class AllAdvertCell: UITableViewCell {
    
    @IBOutlet var avatarImage : UIImageView!
    @IBOutlet var nikLabel : UILabel!
    @IBOutlet var locatioLabel : UILabel!
    @IBOutlet var muscuLabel : UILabel!
    @IBOutlet var parentView : UIView!
    @IBOutlet weak var parentViewHieghtConstraint: NSLayoutConstraint!
    


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
