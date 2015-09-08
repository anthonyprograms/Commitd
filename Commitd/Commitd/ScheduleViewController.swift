//
//  ScheduleViewController.swift
//  Commitd
//
//  Created by Anthony Williams on 8/26/15.
//  Copyright (c) 2015 Anthony Williams. All rights reserved.
//

import UIKit

class ScheduleViewController: UIViewController {

//    var trainerName:String = String()
//    var rate:String = String()
//    var daysAvailable = ["Monday", "Wednesday", "Friday", "Saturday"]
    @IBOutlet weak var trainerImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "Schedule Trainer"
        
        // Trainer Image
        trainerImage.layer.cornerRadius = trainerImage.frame.size.height/2
        trainerImage.layer.masksToBounds = true
        
        // Trainer's Rate
//        rateLabel.text = "$15/hr"
//        rateLabel.font = UIFont(name: "Helvetica Neue", size: 24)
        
        // Select Day/Time from Table View
        
        
        // Request Button
//        requestButton.titleLabel?.font = UIFont(name: "Helvetica Neue", size: 26)
    }
    
    // MARK: Button Actions
}
