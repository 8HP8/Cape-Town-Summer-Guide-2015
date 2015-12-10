//
//  activityTableViewController.swift
//  Cape Town Summer Guide 2015
//
//  Created by Hugo Prinsloo on 2015/12/03.
//  Copyright © 2015 Hugo Prinsloo. All rights reserved.
//

import UIKit

class activityTableViewController: UITableViewController {

    var secondArray = [String]()
    var secondHeaderLabel = [String]()
    var secondAnswerArray = [String]()
    var ThirdImageFinal = [String]()
    var ThirdInfo = [String]()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(animated: Bool) {
        self.tableView.separatorColor = UIColor.clearColor()


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
        return secondArray.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("secondCell", forIndexPath: indexPath) as! activitiesTableViewCell

        
        let entry = secondArray[indexPath.row]
        let image = UIImage(named: entry)


        cell.secondLabel?.text = secondHeaderLabel[indexPath.row]
        cell.secondImage.image = image
        
        return cell
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 200.00
    }

    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let indexPath : NSIndexPath = self.tableView.indexPathForSelectedRow!
        let DestinationViewController = segue.destinationViewController as! detailedNewTableViewController
        
        DestinationViewController.thirdLabelText = secondAnswerArray[indexPath.row]
        DestinationViewController.thirdInfoText = ThirdInfo[indexPath.row]
        DestinationViewController.thirdNewImages = ThirdImageFinal[indexPath.row]
        
        
        
    }
    

    
}


