//
//  TrainerDetailsViewController.swift
//  Commitd
//
//  Created by Anthony Williams on 8/26/15.
//  Copyright (c) 2015 Anthony Williams. All rights reserved.
//

import UIKit

class TrainerDetailsViewController: UIViewController, UITextFieldDelegate {

    let nextTrainerDetailsViewController = NextTrainerViewController()
    var rateLabel:UILabel!
    
    override func viewDidLoad() {
//        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.whiteColor()
        self.title = "Details"
        
        var profileImage:UIImage = UIImage(named: "temp")!
        var profileImageView = UIImageView(image: profileImage)
        profileImageView.frame = CGRectMake(0, 80, 3*self.view.frame.size.width/8, 3*self.view.frame.size.width/8)
        profileImageView.center.x = self.view.frame.size.width/2
        profileImageView.layer.cornerRadius = profileImageView.frame.size.height/2
        profileImageView.layer.masksToBounds = true
        self.view.addSubview(profileImageView)
        
        // Rate Input Field & Rate Label (For the amount they will make)
        let rateField = UITextField(frame: CGRectMake(10, profileImageView.frame.origin.y+profileImageView.frame.size.height+40, self.view.frame.size.width-20, 40))
        rateField.textAlignment = .Center
        rateField.textColor = UIColor.blackColor()
        rateField.placeholder = "Enter Rate Per Hour"
        rateField.keyboardType = UIKeyboardType.DecimalPad
        rateField.font = UIFont(name: "Helvetica Neue", size: 20)
        rateField.delegate = self
        self.view.addSubview(rateField)
        
        rateLabel = UILabel(frame: CGRectMake(10, rateField.frame.origin.y+rateField.frame.size.height+10, self.view.frame.size.width-20, 40))
        rateLabel.textAlignment = .Center
        rateLabel.textColor = UIColor.blackColor()
        rateLabel.font = UIFont(name: "Helvetica Neue", size: 20)
        rateLabel.text = "$0/hour"
        self.view.addSubview(rateLabel)
        
        // Schedule - Days & Hours
        
        
        // Next Button
        var nextButton = UIButton(frame: CGRectMake(0, self.view.frame.size.height-60, self.view.frame.size.width, 60))
        nextButton.setTitle("Next", forState: .Normal)
        nextButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        nextButton.backgroundColor = UIColor(red: 0, green: 0.8, blue: 0.55, alpha: 1)
        nextButton.titleLabel?.font = UIFont(name: "Helvetica Neue", size: 24)
        nextButton.addTarget(self, action: "nextButtonPressed", forControlEvents: .TouchUpInside)
        self.view.addSubview(nextButton)
    }
    
    override func viewWillAppear(animated: Bool) {
        self.navigationController?.navigationBarHidden = false
    }
    
    // MARK: Text Field Delegate
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        var string = NSString(string: textField.text)
        var rate = string.doubleValue - string.doubleValue * 0.0432
        rateLabel.text = "$\(rate)/hour"
        
        return true;
    }
    
    // MARK: Button Actions
    
    func nextButtonPressed() {
        self.navigationController?.pushViewController(nextTrainerDetailsViewController, animated: true)
    }
}
