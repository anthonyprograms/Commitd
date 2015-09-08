//
//  ProfileViewController.swift
//  Commitd
//
//  Created by Anthony Williams on 8/26/15.
//  Copyright (c) 2015 Anthony Williams. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    
    @IBOutlet weak var profileImage: UIImageView!
    
    override func viewDidLoad() {
//        super.viewDidLoad()

        self.view.backgroundColor = UIColor.whiteColor()
        navigationItem.title = "Profile"
        
        profileImage.layer.cornerRadius = profileImage.frame.height/2
        profileImage.layer.masksToBounds = true
    }
    
    override func viewWillAppear(animated: Bool) {
        self.navigationController!.navigationBarHidden = false
        self.navigationItem.hidesBackButton = true
    }
    
    // MARK: Button Actions
    
    @IBAction func settingsPressed(sender: UIBarButtonItem) {
        self.performSegueWithIdentifier("PushSettings", sender: self)
    }
    
    @IBAction func editTrainerPressed(sender: UIBarButtonItem) {
        println("Edit Trainer")
    }
    
    @IBAction func reviewsPressed(sender: UIButton) {
        println("ReviewsPressed")
    }
    
    @IBAction func weeklySchedulePressed(sender: UIButton) {
        println("Weekly Schedule Pressed")
    }
}
