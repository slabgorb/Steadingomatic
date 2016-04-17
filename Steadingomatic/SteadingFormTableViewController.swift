//
//  SteadingFormTableViewController.swift
//  Steadingomatic
//
//  Created by Keith Avery on 2/26/16.
//  Copyright © 2016 Keith Avery. All rights reserved.
//

import UIKit

class SteadingFormTableViewController: UITableViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    

    
    // MARK: Outlets
    
    @IBOutlet weak var cancelButton: UIBarButtonItem!
    @IBOutlet weak var picker: SteadingsSizePickerView!

    var pickerData: [String] = []
    // The number of columns of data
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }

    // The number of rows of data
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        // Input data into the Array:
        pickerData = Steading.sizes().map({$0.description})
    }
    // The data to return for the row and component (column) that's being passed in
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }

    //MARK:- Actions


}
