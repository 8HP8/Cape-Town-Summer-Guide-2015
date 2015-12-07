//
//  detailedNewTableViewController.swift
//  Cape Town Summer Guide 2015
//
//  Created by Hugo Prinsloo on 2015/12/06.
//  Copyright © 2015 Hugo Prinsloo. All rights reserved.
//

import UIKit

class detailedNewTableViewController: UITableViewController {

    var thirdLabelText = String()
    var thirdInfoText = String()
    var thirdNewImages = String()
    
    
//    var image: UIImage{
//        return UIImage(named: thirdNewImages)!
//    }
    
    @IBOutlet weak var detailImageUIImage: UIImageView!
    
    private let tableTopImageHeight: CGFloat = 400.0
    private let tableTopImageCutOff: CGFloat = 80.0
    var headerView :UIView!
    var headerMaskLayer: CAShapeLayer!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(thirdNewImages)
        
        tableView.rowHeight = UITableViewAutomaticDimension
        headerView = tableView.tableHeaderView
        tableView.tableHeaderView = nil
        
        tableView.addSubview(headerView)
        tableView.contentInset = UIEdgeInsets(top: tableTopImageHeight, left: 0, bottom: 0, right: 0)
        tableView.contentOffset = CGPoint(x: 0, y: -tableTopImageHeight)
        
        
        headerMaskLayer = CAShapeLayer()
        headerMaskLayer.fillColor = UIColor.blackColor().CGColor
        headerView.layer.mask = headerMaskLayer
        updateHeaderView()
        
        let effectiveHeight = tableTopImageHeight-tableTopImageCutOff/2
        tableView.contentInset = UIEdgeInsets(top: effectiveHeight, left: 0, bottom: 0, right: 0)
        tableView.contentOffset = CGPoint(x: 0, y: -effectiveHeight)
        

    }
    
    override func viewWillAppear(animated: Bool) {
        self.navigationController?.navigationBarHidden = true
        
       
            detailImageUIImage.image = UIImage(named: thirdNewImages)
        
        
    }
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    

    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    override func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
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
        return 1
    }

 
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("detailedCellNew", forIndexPath: indexPath) as! detailedNewTableViewCell

        
        
        cell.detailPageHeadingLabel.text = thirdLabelText
        cell.detailPageInfoTextLabel.text = thirdInfoText
        
        
        

        return cell
    }
    
    func updateHeaderView() {
        let effectiveHeight = tableTopImageHeight - tableTopImageCutOff/2
        var headerRect = CGRect(x: 0, y: -tableTopImageHeight, width: tableView.bounds.width, height: tableTopImageHeight)

        if tableView.contentOffset.y < effectiveHeight {
            headerRect.origin.y = tableView.contentOffset.y
            headerRect.size.height = -tableView.contentOffset.y + tableTopImageCutOff/2
        }
        headerView.frame = headerRect
        
        let path = UIBezierPath()
        path.moveToPoint(CGPoint(x: 0, y: 0))
        path.addLineToPoint(CGPoint(x: headerRect.width, y: 0))
        path.addLineToPoint(CGPoint(x: headerRect.width, y: headerRect.height))
        path.addLineToPoint(CGPoint(x: 0, y: headerRect.height-tableTopImageCutOff))
        headerMaskLayer?.path = path.CGPath
        

    }

    override func scrollViewDidScroll(scrollView: UIScrollView) {
        updateHeaderView()
    }
    
    
    

}
