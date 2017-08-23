//
//  jobsTableViewCell.swift
//  Field Monitoring
//
//  Created by R.M.K. Engineering College on 23/08/17.
//  Copyright © 2017 R.M.K. Engineering College. All rights reserved.
//

import UIKit

class jobsTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var titleVal: UILabel!
    @IBOutlet weak var salaryVal: UILabel!
    @IBOutlet weak var experienceVal: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
