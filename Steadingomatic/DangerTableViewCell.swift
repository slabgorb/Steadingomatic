//
//  DangerTableViewCell.swift
//  Steadingomatic
//
//  Created by Keith Avery on 2/23/16.
//  Copyright © 2016 Keith Avery. All rights reserved.
//

import UIKit

class DangerTableViewCell: UITableViewCell {


    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    // MARK: Properties


    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelType: UILabel!
    @IBOutlet weak var labelSubType: UILabel!


}
