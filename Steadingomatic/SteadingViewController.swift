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

    override func viewDidLoad() {
        super.viewDidLoad()
        viewSteadingDetail.labelSteadingName.text = steading?.name

        // Do any additional setup after loading the view.
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
