//
//  MyProgramCell.swift
//  FitnessHelper
//
//  Created by Alex on 03.01.17.
//  Copyright © 2017 AnsA. All rights reserved.
//

import UIKit

class MyProgramCell: UITableViewCell {

    @IBOutlet weak var myLabelName: UILabel!
    @IBOutlet weak var myLabelDiscript: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
