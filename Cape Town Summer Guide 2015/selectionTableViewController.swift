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
    var firstHeadingLabel = [String]()
    var secondArray = [secondTableInfo]()
    var toPrint = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        firstArray = ["Top2.jpg","Top.jpg","Food.jpg","Beach.jpg","Coffee.jpg","Nightlife.png","Market Blue bird.jpg","Winetasting.jpg","Shop.jpg"]
        firstHeadingLabel = ["Top thing to do","Adventurous","Hungry","Beach bum","Coffee lover","Night life","Markets","Wine Tasting","Shop",]
        
        
        secondArray = [
            //Top things to do
            secondTableInfo(secondTitle: ["Top2.jpg","Top2.jpg","Top2.jpg","Top2.jpg"], heading: ["Top 1","Top 2","Top 3","Top 4"]),
            
            //ADVENTUROUS
            secondTableInfo(secondTitle: ["scuba.jpg","Rhodes.jpg","tokaiForest.jpg","HermanusBeach.jpg"], heading: ["Go Scuba diving","Explore Rhodes Memorial","Tokai Forest run","Hermanus coastal rocks"]),
            
            //HUNGRY
            secondTableInfo(secondTitle: ["Food.jpg","Food.jpg","Food.jpg","Food.jpg"], heading: ["","","",""]),
            
            //BEACH VIBES
            secondTableInfo(secondTitle: ["Beach.jpg","Beach.jpg","Beach.jpg","Beach.jpg"], heading: ["","","",""]),
            
            //COFFEE LOVER
            secondTableInfo(secondTitle: ["Coffee.jpg","Coffee.jpg","Coffee.jpg","Coffee.jpg"], heading: ["","","",""]),
            
            //NIGHTLIFE
            secondTableInfo(secondTitle: ["Nightlife.png","Nightlife.png","Nightlife.png","Nightlife.png"], heading: ["","","",""]),
            
            //MARKETS
            secondTableInfo(secondTitle: ["Market Blue bird.jpg","Market Blue bird.jpg","Market Blue bird.jpg","Market Blue bird.jpg"],heading: ["","","",""]),
            
            //WINETASTING
            secondTableInfo(secondTitle: ["Winetasting.jpg","Winetasting.jpg","Winetasting.jpg","Winetasting.jpg"], heading: ["","","",""]),
            
            //SHOP
            secondTableInfo(secondTitle: ["Shop.jpg","Shop.jpg","Shop.jpg","Shop.jpg"], heading: ["","","",""])

]
        
//        toPrint = [secondArray]
        
        print("")
        

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
        let headings = firstHeadingLabel[indexPath.row]
        let image = UIImage(named: entry)
        
        cell.firstTLabel.text = headings
        cell.firstImage.image = image
        
        
        return cell
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 200.00
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        
        let indexPath : NSIndexPath = self.tableView.indexPathForSelectedRow!
        let DestinationViewController = segue.destinationViewController as! activityTableViewController
        
        var secondTableArrayTwo : secondTableInfo
        
        secondTableArrayTwo = secondArray[indexPath.row]
        DestinationViewController.secondArray = secondTableArrayTwo.secondTitle
        DestinationViewController.secondHeaderLabel = secondTableArrayTwo.heading
        
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
