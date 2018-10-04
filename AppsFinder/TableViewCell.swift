//
//  TableViewCell.swift
//  AppsFinder
//
//  Created by Admin on 10/4/2561 BE.
//  Copyright © 2561 BE sajeeva. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var appMainImg: UIImageView!
    @IBOutlet weak var appMainName: UILabel!
    @IBOutlet weak var appMainDetails: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
