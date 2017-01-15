//
//  MyRepetCell.swift
//  FitnessHelper
//
//  Created by Alex on 15.01.17.
//  Copyright © 2017 AnsA. All rights reserved.
//

import UIKit

class MyRepetCell: UITableViewCell {
    
    @IBOutlet weak var myLabelRepet: UILabel!
    @IBOutlet weak var myLabelHeft: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
