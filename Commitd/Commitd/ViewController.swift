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
        
        self.view.backgroundColor = UIColor(red: 0/255, green: 175/255, blue: 130/255, alpha: 1)
    }
    
    override func viewWillAppear(animated: Bool) {
        self.navigationController?.navigationBarHidden = true
    }
    
    // MARK: Button Actions
    @IBAction func loginWithFacebook(sender: UIButton) {
        println("Login with Facebook")
        self.performSegueWithIdentifier("UserLoggedIn", sender: self)
    }
    
    @IBAction func loginWithTwitter(sender: UIButton) {
        println("Login With Twitter")
        self.performSegueWithIdentifier("UserLoggedIn", sender: self)
    }
}