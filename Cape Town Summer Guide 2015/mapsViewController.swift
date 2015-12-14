//
//  mapsViewController.swift
//  Cape Town Summer Guide 2015
//
//  Created by Hugo Prinsloo on 2015/12/14.
//  Copyright © 2015 Hugo Prinsloo. All rights reserved.
//

import UIKit
import MapKit

class mapsViewController: UIViewController {
   
    var mapLatitude = Double()
    var mapLongitude = Double()
    
    @IBOutlet weak var mapViewer: MKMapView!

    override func viewWillAppear(animated: Bool) {
        self.navigationController?.navigationBarHidden = false
        mapViewer.layer.cornerRadius = 5.0
        mapViewer.clipsToBounds = true
        

    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // 1

        let location = CLLocationCoordinate2D(
            latitude: mapLatitude,
            longitude: mapLongitude
        )
        // 2
        let span = MKCoordinateSpanMake(0.005, 0.005)
        let region = MKCoordinateRegion(center: location, span: span)
        mapViewer.setRegion(region, animated: true)
        
        //3
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = ""
        annotation.subtitle = "Cape Town"
        mapViewer.addAnnotation(annotation)
        
        
        
   }
}