//
//  SteadingViewController.swift
//  Steadingomatic
//
//  Created by Keith Avery on 2/22/16.
//  Copyright © 2016 Keith Avery. All rights reserved.
//

import UIKit

class SteadingViewController: UIViewController {
    var steading: Steading?

    @IBOutlet weak var steadingNameLabel: UILabel!

    @IBOutlet weak var iconLabel: UILabel!
    @IBOutlet weak var populationLabel: UILabel!
    @IBOutlet weak var defensesLabel: UILabel!
    @IBOutlet weak var prosperityLabel: UILabel!
    @IBOutlet weak var sizeLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        if let steading = steading {
            steadingNameLabel.text = steading.name
            sizeLabel.text = steading.size.description
            populationLabel.text = steading.population.description
            defensesLabel.text = steading.defenses.description
            prosperityLabel.text = steading.prosperity.description
            iconLabel.text = steading.icon.rawValue
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet var viewSteadingDetail: SteadingDetailView!

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
