//
//  NextTrainerViewController.swift
//  Commitd
//
//  Created by Anthony Williams on 8/27/15.
//  Copyright (c) 2015 Anthony Williams. All rights reserved.
//

import UIKit

class NextTrainerViewController: UIViewController {
    
    override func viewDidLoad() {
//        super.viewDidLoad()

        self.view.backgroundColor = UIColor.whiteColor()
        
        // Description Label
        var descriptionLabel = UILabel(frame: CGRectMake(5, 80, self.view.frame.size.width-10, 40))
        descriptionLabel.text = "Select key words for your description"
        descriptionLabel.textAlignment = .Center
        descriptionLabel.textColor = UIColor.blackColor()
        descriptionLabel.font = UIFont(name: "Helvetica Neue", size: 20)
        self.view.addSubview(descriptionLabel)
        
        // Description
        var description = UITextView(frame: CGRectMake(5, 120, self.view.frame.size.width-10, 150))
        description.editable = false
        description.font = UIFont(name: "Helvetica Neue", size: 20)
        description.text = ""
        description.layer.borderColor = UIColor.blackColor().CGColor
        description.layer.borderWidth = 0.5
        description.layer.masksToBounds = true
        self.view.addSubview(description)
        
        // Key Words for Description
        
        
        // Done Button
        var doneButton = UIButton(frame: CGRectMake(0, self.view.frame.size.height-60, self.view.frame.size.width, 60))
        doneButton.setTitle("Done", forState: .Normal)
        doneButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        doneButton.backgroundColor = UIColor(red: 0, green: 0.8, blue: 0.55, alpha: 1)
        doneButton.titleLabel?.font = UIFont(name: "Helvetica Neue", size: 24)
        doneButton.addTarget(self, action: "doneButtonPressed", forControlEvents: .TouchUpInside)
        self.view.addSubview(doneButton)
    }
    
    // MARK: Button Actions
    
    func doneButtonPressed() {
        self.navigationController?.popToRootViewControllerAnimated(true)
    }
}
