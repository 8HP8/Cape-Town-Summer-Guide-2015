//
//  DataForTableView.swift
//  Cape Town Summer Guide 2015
//
//  Created by Hugo Prinsloo on 2015/12/01.
//  Copyright © 2015 Hugo Prinsloo. All rights reserved.
//

import Foundation

class DataForTableView {
    class Entry {
        let fileName : String
        let heading : String
        init(fName: String, heading: String){
            self.fileName = fName
            self.heading = heading
        }
    }
        let places = [
            Entry(fName: "MARKETS.png", heading: "Heading 1"),
            Entry(fName: "SCUBA.png", heading: "Heading 2"),
            Entry(fName: "GRAFFITI WALK.png", heading: "Heading 3"),
            Entry(fName: "SHOP.png", heading: "Heading 4"),
            Entry(fName: "FEED SQUIRRELS.png", heading: "Heading 5")
        ]
    }
