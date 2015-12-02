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
            Entry(fName: "1.png", heading: "Heading 1"),
            Entry(fName: "2.png", heading: "Heading 2"),
            Entry(fName: "3.png", heading: "Heading 3"),
            Entry(fName: "4.png", heading: "Heading 4"),
            Entry(fName: "5.png", heading: "Heading 5")
        ]
    }
