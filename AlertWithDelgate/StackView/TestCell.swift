//
//  TableViewCell.swift
//  AlertWithDelgate
//
//  Created by Ankit on 2/6/19.
//  Copyright © 2019 BajajAllianz. All rights reserved.
//

import UIKit

class TestCell: UITableViewCell {

    @IBOutlet var nameCell: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
