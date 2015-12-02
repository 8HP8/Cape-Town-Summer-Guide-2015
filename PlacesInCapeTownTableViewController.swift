//
//  PlacesInCapeTownTableViewController.swift
//  Cape Town Summer Guide 2015
//
//  Created by Hugo Prinsloo on 2015/12/01.
//  Copyright © 2015 Hugo Prinsloo. All rights reserved.
//

import UIKit

class PlacesInCapeTownTableViewController: UITableViewController {

    let data = DataForTableView()
 
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.places.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! PlaceTableViewCell
         
        
        let entry = data.places[indexPath.row]
        let image = UIImage(named: entry.fileName)
        
        cell.backgroundImage.image = image
        cell.placeLabel.text = entry.heading
        

        
        return cell
    }
    

  }
