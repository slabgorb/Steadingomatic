//
//  SteadingTableViewCell.swift
//  Steadingomatic
//
//  Created by Keith Avery on 2/23/16.
//  Copyright © 2016 Keith Avery. All rights reserved.
//

import UIKit

class SteadingTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBOutlet weak var labelSteadingName: UILabel!
}
