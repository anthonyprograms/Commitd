//
//  ViewController.swift
//  Commitd
//
//  Created by Anthony Williams on 8/22/15.
//  Copyright (c) 2015 Anthony Williams. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBarHidden = true
        self.view.backgroundColor = UIColor(red: 46/255, green: 184/255, blue: 230/255, alpha: 1)
        
        // Title Label
        let title = UILabel(frame: CGRectMake(0, 30, self.view.frame.size.width, self.view.frame.size.height/2))
        title.text = "C"
        title.textColor = UIColor.whiteColor()
        title.textAlignment = .Center
        title.font = UIFont(name: "Helvetica Neue", size: 125)
        self.view.addSubview(title)
        
        // Login With Facebook
        let facebookButton = UIButton(frame: CGRectMake(20, self.view.frame.size.height-100, self.view.frame.size.width-40, 35))
        facebookButton.setTitle("Login With Facebook", forState: .Normal)
        facebookButton.setTitleColor(UIColor.blackColor(), forState: .Normal)
        facebookButton.titleLabel?.font = UIFont(name: "Helvetica Neue", size: 18)
        facebookButton.addTarget(self, action: "loginWithFacebook", forControlEvents: .TouchUpInside)
        self.view.addSubview(facebookButton)
        
        // Login With Twitter
        let twitterButton = UIButton(frame: CGRectMake(20, facebookButton.frame.origin.y+35, self.view.frame.size.width-40, 35))
        twitterButton.setTitle("Login With Twitter", forState: .Normal)
        twitterButton.setTitleColor(UIColor.blackColor(), forState: .Normal)
        twitterButton.titleLabel?.font = UIFont(name: "Helvetica Neue", size: 18)
        twitterButton.addTarget(self, action: "loginWithTwitter", forControlEvents: .TouchUpInside)
        self.view.addSubview(twitterButton)
    }
    
    func loginWithFacebook() {
        println("Login with Facebook")
    }
    
    func loginWithTwitter() {
        println("Login with Twitter")
    }
}

