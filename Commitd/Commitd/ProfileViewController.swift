//
//  ProfileViewController.swift
//  Commitd
//
//  Created by Anthony Williams on 8/26/15.
//  Copyright (c) 2015 Anthony Williams. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    let settingsViewController = SettingsViewController()
    let trainerDetailsViewController = TrainerDetailsViewController()
    
    override func viewDidLoad() {
//        super.viewDidLoad()

        self.view.backgroundColor = UIColor.whiteColor()
        self.title = "Profile"
        
        // Settings Button
        let settingsButton = UIButton(frame: CGRectMake(self.view.frame.size.width-85, 20, 80, 30))
        settingsButton.setTitle("Settings", forState: .Normal)
        settingsButton.setTitleColor(UIColor.blueColor(), forState: .Normal)
        settingsButton.addTarget(self, action: "settingsButtonPressed", forControlEvents: .TouchUpInside)
        settingsButton.titleLabel?.textAlignment = .Right
        self.view.addSubview(settingsButton)

        // Trainer Button
        let trainerButton = UIButton(frame: CGRectMake(5, 20, 80, 30))
        trainerButton.setTitle("Trainer", forState: .Normal)
        trainerButton.setTitleColor(UIColor.blueColor(), forState: .Normal)
        trainerButton.addTarget(self, action: "trainerButtonPressed", forControlEvents: .TouchUpInside)
        trainerButton.titleLabel?.textAlignment = .Left
        self.view.addSubview(trainerButton)
        
        // Profile Image
        var profileImage:UIImage = UIImage(named: "temp")!
        var profileImageView = UIImageView(image: profileImage)
        profileImageView.frame = CGRectMake(0, 0, 2*self.view.frame.size.width/5, 2*self.view.frame.size.width/5)
        profileImageView.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/5)
        profileImageView.layer.cornerRadius = profileImageView.frame.size.height/2
        profileImageView.layer.masksToBounds = true
        self.view.addSubview(profileImageView)
        
        // Name
        
        // Age
        
        // Rating
        
        // Reviews
        
        // Weekly Schedule
    }
    
    override func viewWillAppear(animated: Bool) {
//        self.navigationItem.hidesBackButton = true
        self.navigationController!.navigationBarHidden = true
    }
    
    // MARK: Button Actions
    
    func settingsButtonPressed(){
        self.navigationController?.pushViewController(settingsViewController, animated: true)
    }
    
    func trainerButtonPressed(){
        self.navigationController?.pushViewController(trainerDetailsViewController, animated: true)
    }
}
