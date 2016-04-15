//
//  SteadingsTableViewController.swift
//  Steadingomatic
//
//  Created by Keith Avery on 2/19/16.
//  Copyright © 2016 Keith Avery. All rights reserved.
//

import UIKit

class SteadingsTableViewController: UITableViewController {

    var steadingsData = [
        Steading(size:.Village),
        Steading(size:.Town),
        Steading(size:.City),
        Steading(size:.Keep),
        Steading(size:.Village),
        Steading(size:.Village),
        Steading(size:.Town),
        Steading(size:.City),
        Steading(size:.Keep),
        Steading(size:.Village),
        Steading(size:.Village),
        Steading(size:.Town),
        Steading(size:.City),
        Steading(size:.Keep),
        Steading(size:.Village),
        Steading(size:.Village),
        Steading(size:.Town),
        Steading(size:.City),
        Steading(size:.Keep),
        Steading(size:.Village),
        Steading(size:.Village),
        Steading(size:.Town),
        Steading(size:.City),
        Steading(size:.Keep),
        Steading(size:.Village),
        Steading(size:.Village),
        Steading(size:.Town),
        Steading(size:.City),
        Steading(size:.Keep),
        Steading(size:.Village),
    ]

    var steadingToPass: Steading?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return steadingsData.count
        
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath)
        -> UITableViewCell {
            let cell = tableView.dequeueReusableCellWithIdentifier("SteadingCell", forIndexPath: indexPath) as! SteadingTableViewCell
            let steading = steadingsData[indexPath.row] as Steading
            cell.labelName.text = steading.name
            cell.labelPopulation.text = steading.population.description
            cell.labelDefenses.text = steading.defenses.description
            cell.labelProsperity.text = steading.prosperity.description
            cell.labelType.text = steading.size.description
            cell.labelIcon.text = steading.icon.rawValue
            
            return cell
    }

//    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//        print("You selected cell #\(indexPath.row)!")
//        
//        let indexPath = tableView.indexPathForSelectedRow!
//   
//        steadingToPass = steadingsData[indexPath.row]
//        performSegueWithIdentifier("SelectSteadingRow", sender: self)
//        
//    }
//    
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?){
//        
//        if (segue.identifier == "SelectSteadingRow") {
//            
//            // initialize new view controller and cast it as your view controller
//            let viewController = segue.destinationViewController as! SteadingViewController
//            viewController.steading = steadingToPass
//        }
//        
//    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            steadingsData.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
            steadingsData.append(Steading(size: .Village))
        }
    }


    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    // MARK: - Navigation
    
    @IBAction func cancelToSteadingsTableViewController(segue:UIStoryboardSegue) {
    }
    
    @IBAction func saveSteading(segue:UIStoryboardSegue) {
    }

}
