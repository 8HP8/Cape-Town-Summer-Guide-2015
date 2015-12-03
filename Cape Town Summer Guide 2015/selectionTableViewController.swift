//
//  selectionTableViewController.swift
//  Cape Town Summer Guide 2015
//
//  Created by Hugo Prinsloo on 2015/12/03.
//  Copyright © 2015 Hugo Prinsloo. All rights reserved.
//

import UIKit

class selectionTableViewController: UITableViewController {

    var firstArray = [String]()
    var secondArray = [secondTableInfo]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        firstArray = ["Top2.jpg","Top.jpg","Food.jpg","Beach.jpg","Coffee.jpg","Nightlife.png","Market Blue bird.jpg","Winetasting.jpg","Shop.jpg"]
        secondArray = [ secondTableInfo(secondTitle: ["Top2.jpg","Top2.jpg","Top2.jpg","Top2.jpg"], pic: ""),
                        secondTableInfo(secondTitle: ["Top.jpg","Top.jpg","Top.jpg","Top.jpg"], pic: ""),
                        secondTableInfo(secondTitle: ["Food.jpg","Food.jpg","Food.jpg","Food.jpg"], pic: ""),
                        secondTableInfo(secondTitle: ["Beach.jpg","Beach.jpg","Beach.jpg","Beach.jpg"], pic: ""),
                        secondTableInfo(secondTitle: ["Coffee.jpg","Coffee.jpg","Coffee.jpg","Coffee.jpg"], pic: ""),
                        secondTableInfo(secondTitle: ["Nightlife.png","Nightlife.png","Nightlife.png","Nightlife.png"], pic: ""),
                        secondTableInfo(secondTitle: ["Market Blue bird.jpg","Market Blue bird.jpg","Market Blue bird.jpg","Market Blue bird.jpg"], pic: ""),
                        secondTableInfo(secondTitle: ["Winetasting.jpg","Winetasting.jpg","Winetasting.jpg","Winetasting.jpg"], pic: ""),
                        secondTableInfo(secondTitle: ["Shop.jpg","Shop.jpg","Shop.jpg","Shop.jpg"], pic: "")

]
        

    }
    
    override func viewWillAppear(animated: Bool) {
        self.navigationController?.navigationBarHidden = false
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
        // #warning Incomplete implementation, return the number of rows
        return firstArray.count
    }
    

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! selectionTableViewCell
        
        
        let entry = firstArray[indexPath.row]
        let image = UIImage(named: entry)
        
        cell.firstTLabel.text = entry
        cell.firstImage.image = image
        
        
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        
        let indexPath : NSIndexPath = self.tableView.indexPathForSelectedRow!
        let DestinationViewController = segue.destinationViewController as! activityTableViewController
        
        var secondTableArrayTwo : secondTableInfo
        
        secondTableArrayTwo = secondArray[indexPath.row]
        DestinationViewController.secondArray = secondTableArrayTwo.secondTitle
        
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

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

}
