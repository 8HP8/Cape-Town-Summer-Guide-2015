//
//  WelcomeViewController.swift
//  Cape Town Summer Guide 2015
//
//  Created by Hugo Prinsloo on 2015/12/02.
//  Copyright © 2015 Hugo Prinsloo. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var exporeBtn: UIButton!
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(animated: Bool) {
        self.navigationController?.navigationBar.tintColor = UIColor(red: 0.228, green: 0.52, blue: 0.80, alpha: 1)
        self.navigationController?.navigationBarHidden = true
        exporeBtn.layer.cornerRadius = 5.0
        exporeBtn.clipsToBounds = true
        
          }


}
