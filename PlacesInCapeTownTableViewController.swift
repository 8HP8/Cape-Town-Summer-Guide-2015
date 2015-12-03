////
////  PlacesInCapeTownTableViewController.swift
////  Cape Town Summer Guide 2015
////
////  Created by Hugo Prinsloo on 2015/12/01.
////  Copyright © 2015 Hugo Prinsloo. All rights reserved.
////
//
//import UIKit
//
//class PlacesInCapeTownTableViewController: UITableViewController {
//
//    
//    let data = DataForTableView()
// 
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        
//        
//        
//        
//        
//        
//    }
//    
//    override func viewWillAppear(animated: Bool) {
//        self.navigationController?.navigationBarHidden = false
//    }
//
//
//    // MARK: - Table view data source
//
//    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
//        return 1
//    }
//
//    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return data.places.count
//    }
//
//    
//    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! PlaceTableViewCell
//         
//        
//        let entry = data.places[indexPath.row]
//        let image = UIImage(named: entry.sectionImg)
//        
//        cell.backgroundImage.image = image
//        cell.placeLabel.text = entry.sectionHeading
//        
//
//        
//        return cell
//    }
//    
//    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//        
//        let userSelection = data.places[indexPath.row]
//        
////        Entry(fName: "Top2.jpg", heading: "Top things to do"),
//
////        if userSelection == {
//        let places2TVC: testViewController =  self.storyboard?.instantiateViewControllerWithIdentifier("testViewController") as! testViewController
//        
//        
//        
//        self.presentViewController(places2TVC, animated: true, completion: nil)
////        }
//
//    }
//
//    
//    
//  }
