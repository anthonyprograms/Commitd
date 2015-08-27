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
    
    override func viewDidLoad() {
//        super.viewDidLoad()

        self.view.backgroundColor = UIColor.whiteColor()
        self.title = "Profile"
        
        var settingsButton = UIBarButtonItem(title: "Settings", style: UIBarButtonItemStyle.Plain, target: self, action: "settingsButtonPressed")
        self.navigationController?.navigationItem.rightBarButtonItem = settingsButton
        
        var trainerButton = UIBarButtonItem(title: "Trainer", style: UIBarButtonItemStyle.Plain, target: self, action: "trainerButtonPressed")
        self.navigationController?.navigationItem.leftBarButtonItem = trainerButton
        
        var profileImage:UIImage = UIImage(named: "temp")!
        var profileImageView = UIImageView(image: profileImage)
        profileImageView.frame = CGRectMake(0, 0, 2*self.view.frame.size.width/5, 2*self.view.frame.size.width/5)
        profileImageView.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/5)
        profileImageView.layer.cornerRadius = profileImageView.frame.size.height/2
        profileImageView.layer.masksToBounds = true
        self.view.addSubview(profileImageView)
    }
    
    override func viewWillAppear(animated: Bool) {
        self.navigationController?.navigationBarHidden = false
    }
    
    // MARK: Button Actions
    
    func settingsButtonPressed(){
        self.navigationController?.pushViewController(settingsViewController, animated: true)
    }
}
