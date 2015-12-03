//
//  selectionTableViewCell.swift
//  Cape Town Summer Guide 2015
//
//  Created by Hugo Prinsloo on 2015/12/03.
//  Copyright © 2015 Hugo Prinsloo. All rights reserved.
//

import UIKit

class selectionTableViewCell: UITableViewCell {

    
    @IBOutlet weak var firstImage: UIImageView!
    @IBOutlet weak var firstTLabel: UILabel!
    
    //TODO: link
   // @IBOutlet weak var firstTLabel: UILabel!
    //@IBOutlet weak var firstImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
