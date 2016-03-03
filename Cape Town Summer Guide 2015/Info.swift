//
//  secondTableInfo.swift
//  Cape Town Summer Guide 2015
//
//  Created by Hugo Prinsloo on 2015/12/03.
//  Copyright © 2015 Hugo Prinsloo. All rights reserved.
//

import Foundation
class firstTableInfo{
    
    var firstImg : String
    var firstHeadings : String
    
    init(fName: String, heading: String){
        self.firstImg = fName
        self.firstHeadings = heading
    }
    
}

struct secondTableInfo {
    
    var secondImage : [String]
    var heading : [String]
}

struct thirdViewandSoOn {
    var detailPageHeading = [String]()
    var detailPageImage = [String]()
    var detailPageInfo = [String]()
    
    var mapX = [Double]()
    var mapY = [Double]()
    var webSite = [String]()
    }








//@IBOutlet weak var mapView: MKMapView!
//override func viewDidLoad() {
//    super.viewDidLoad()
//    // 1
//    let location = CLLocationCoordinate2D(
//        latitude: -33.948020,
//        longitude: 18.402531
//    )
//    // 2
//    let span = MKCoordinateSpanMake(0.05, 0.05)
//    let region = MKCoordinateRegion(center: location, span: span)
//    mapView.setRegion(region, animated: true)
//    
//    
//    //3
//    let annotation = MKPointAnnotation()
//    annotation.coordinate = location
//    annotation.title = "Big Ben"
//    annotation.subtitle = "London"
//    mapView.addAnnotation(annotation)
