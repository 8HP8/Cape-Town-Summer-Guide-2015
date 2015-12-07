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
    var thirdArray = [thirdViewandSoOn]()
    
    var secondArray = [secondTableInfo]()
    var toPrint = [String]()
    var barBtnColour = UIColor.blackColor()
    var navBarBtnCustomColour = UIColor(red: 228/255, green: 52/255, blue: 80/255, alpha: 1)
    let tableviewBackgroundColour = UIColor(red: 30/255, green: 30/255, blue: 30/255, alpha: 1)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()


        firstArray = ["Top2.jpg","Top.jpg","Food.jpg","Beach.jpg","Coffee.jpg","Nightlife.png","Market Blue bird.jpg","Winetasting.jpg","Shop.jpg"]
        firstHeadingLabel = ["Top thing to do","Adventurous","Hungry","Beach bum","Coffee lover","Night life","Markets","Wine Tasting","Shop",]
        
        
        secondArray = [
            //Top things to do
            secondTableInfo(secondImage: ["Top2.jpg","Top2.jpg","Top2.jpg","Top2.jpg"], heading: ["Top 1","Top 2","Top 3","Top 4"]),
            
            //ADVENTUROUS
            secondTableInfo(secondImage: ["scuba.jpg","kalkBayHarbour.JPG","tokaiForest.jpg","HermanusBeach.jpg"], heading: ["Go Scuba diving","Explore harbours","Tokai Forest run","Hermanus coastal rocks"]),

            
            //HUNGRY
            secondTableInfo(secondImage: ["Food.jpg","Food.jpg","Food.jpg","Food.jpg"], heading: ["","","",""]),
            
           
            
            
            //BEACH VIBES
            secondTableInfo(secondImage: ["Beach.jpg","Beach.jpg","Beach.jpg","Beach.jpg"], heading: ["","","",""]),
            
          
            
            
            //COFFEE LOVER
            secondTableInfo(secondImage: ["Coffee.jpg","Coffee.jpg","Coffee.jpg","Coffee.jpg"], heading: ["","","",""]),
            
          
            
            
            //NIGHTLIFE
            secondTableInfo(secondImage: ["Nightlife.png","Nightlife.png","Nightlife.png","Nightlife.png"], heading: ["","","",""]),
            
         
            
            
            //MARKETS
            secondTableInfo(secondImage: ["Market Blue bird.jpg","Market Blue bird.jpg","Market Blue bird.jpg","Market Blue bird.jpg"],heading: ["","","",""]),
            
        
            
            
            //WINETASTING
            secondTableInfo(secondImage: ["Winetasting.jpg","Winetasting.jpg","Winetasting.jpg","Winetasting.jpg"], heading: ["","","",""]),
            
       
            
            
            //SHOP
            secondTableInfo(secondImage: ["Shop.jpg","Shop.jpg","Shop.jpg","Shop.jpg"], heading: ["","","",""])

]
        

        thirdArray = [
            thirdViewandSoOn(detailPageHeading: ["","","",""], detailPageImage:["","","",""],detailPageInfo:["","","",""]),
            thirdViewandSoOn(detailPageHeading: ["Scuba with seals", "harbour fun", "forest run","Hermanus Beach"], detailPageImage:["scuba.jpg","FishhoekHarbour.JPG","tokaiForest.jpg","HermanusBeach.jpg"],detailPageInfo:["Details Een","Details 2","Details 3","Details 4"]),
            thirdViewandSoOn(detailPageHeading: ["","","",""], detailPageImage:["","","",""],detailPageInfo:["","","",""]),
            thirdViewandSoOn(detailPageHeading: ["","","",""], detailPageImage:["","","",""],detailPageInfo:["","","",""]),
            thirdViewandSoOn(detailPageHeading: ["","","",""], detailPageImage:["","","",""],detailPageInfo:["","","",""]),
            thirdViewandSoOn(detailPageHeading: ["","","",""], detailPageImage:["","","",""],detailPageInfo:["","","",""]),
            thirdViewandSoOn(detailPageHeading: ["","","",""], detailPageImage:["","","",""],detailPageInfo:["","","",""]),
            thirdViewandSoOn(detailPageHeading: ["","","",""], detailPageImage:["","","",""],detailPageInfo:["","","",""]),
            thirdViewandSoOn(detailPageHeading: ["","","",""], detailPageImage:["","","",""],detailPageInfo:["","","",""]),

        
        ]
        

    }
    
    override func viewWillAppear(animated: Bool) {
        self.navigationController?.navigationBarHidden = false
        self.navigationController?.navigationBar.tintColor = navBarBtnCustomColour
        self.tableView.backgroundColor = tableviewBackgroundColour
     
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
        
        DestinationViewController.secondArray = secondTableArrayTwo.secondImage
        DestinationViewController.secondHeaderLabel = secondTableArrayTwo.heading
        
        var theNewThird : thirdViewandSoOn
        theNewThird = thirdArray[indexPath.row]
        
        DestinationViewController.secondAnswerArray = theNewThird.detailPageHeading
        DestinationViewController.ThirdImageFinal = theNewThird.detailPageImage
        

      
    }
   
}
