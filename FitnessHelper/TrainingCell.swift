//
//  TrainingCell.swift
//  FitnessHelper
//
//  Created by Alex on 14.12.16.
//  Copyright © 2016 AnsA. All rights reserved.
//

import UIKit

class TrainingCell: UITableViewCell {
    
    @IBOutlet weak var myCellLabel: UILabel!
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var myPerentView : UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }

}
