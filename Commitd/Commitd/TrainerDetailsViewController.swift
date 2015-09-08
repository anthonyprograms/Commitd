//
//  TrainerDetailsViewController.swift
//  Commitd
//
//  Created by Anthony Williams on 8/26/15.
//  Copyright (c) 2015 Anthony Williams. All rights reserved.
//

import UIKit

class TrainerDetailsViewController: UIViewController, UITextFieldDelegate {

//    var rateLabel:UILabel!
    @IBOutlet weak var profileImage: UIImageView!
    
    override func viewDidLoad() {
//        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.whiteColor()
        navigationItem.title = "Become A Trainer"
        
        
        profileImage.layer.cornerRadius = profileImage.frame.size.height/2
        profileImage.layer.masksToBounds = true
        
        // Rate Input Field & Rate Label (For the amount they will make)
//        rateField.font = UIFont(name: "Helvetica Neue", size: 20)
//        rateField.delegate = self
        
//        rateLabel.font = UIFont(name: "Helvetica Neue", size: 20)
        
        // Schedule - Days & Hours
        
    }
    
    // MARK: Button Actions
    
    @IBAction func nextPressed(sender: UIButton) {
        self.performSegueWithIdentifier("PushNextTrainer", sender: self)
        
        // Push data to next view
    }
    
    
    // MARK: Text Field Delegate
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        var string = NSString(string: textField.text)
        var rate = string.doubleValue - string.doubleValue * 0.0432
//        rateLabel.text = "$\(rate)/hour"
        
        return true;
    }
}
