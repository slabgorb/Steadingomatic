//
//  SteadingsSizePickerView.swift
//  Steadingomatic
//
//  Created by Keith Avery on 2/28/16.
//  Copyright © 2016 Keith Avery. All rights reserved.
//

import UIKit

class SteadingsSizePickerView: UIPickerView {

    let pickerData:[Steading.Size] = Steading.sizes()
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func numberOfRowsInComponent(component: Int) -> Int {
        return pickerData.count
    }
}
