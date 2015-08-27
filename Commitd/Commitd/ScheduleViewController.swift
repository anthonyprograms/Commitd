//
//  ScheduleViewController.swift
//  Commitd
//
//  Created by Anthony Williams on 8/26/15.
//  Copyright (c) 2015 Anthony Williams. All rights reserved.
//

import UIKit

class ScheduleViewController: UIViewController, UIPickerViewDelegate {

    var trainerName:String = String()
    var rate:String = String()
    var daysAvailable = ["Monday", "Wednesday", "Friday", "Saturday"]
    
    override func viewDidLoad() {
//        super.viewDidLoad()

        self.view.backgroundColor = UIColor.whiteColor()
        self.title = "Schedule"
        
        // Trainer Image
        var profileImage:UIImage = UIImage(named: "temp")!
        var profileImageView = UIImageView(image: profileImage)
        profileImageView.frame = CGRectMake(0, 60, 2*self.view.frame.size.width/5, 2*self.view.frame.size.width/5)
        profileImageView.center.x = self.view.frame.size.width/2
        profileImageView.layer.cornerRadius = profileImageView.frame.size.height/2
        profileImageView.layer.masksToBounds = true
        self.view.addSubview(profileImageView)
        
        // Trainer's Rate
        let rateLabel = UILabel(frame: CGRectMake(0, profileImageView.frame.origin.y+profileImageView.frame.size.height+10, self.view.frame.size.width, 50))
        rateLabel.text = "$15/hr"
        rateLabel.textColor = UIColor.blackColor()
        rateLabel.textAlignment = .Center
        rateLabel.font = UIFont(name: "Helvetica Neue", size: 24)
        self.view.addSubview(rateLabel)
        
        // Select Day
        let dayPicker = UIPickerView(frame: CGRectMake(0, rateLabel.frame.origin.y+rateLabel.frame.size.height+10, 2*self.view.frame.size.width/3, 50))
        dayPicker.center.x = self.view.frame.size.width/2
        dayPicker.delegate = self
        dayPicker.backgroundColor = UIColor(red: 0.2, green: 0.4, blue: 0.1, alpha: 1)
        dayPicker.showsSelectionIndicator = true
        self.view.addSubview(dayPicker)
        
        // Select Time
        let timePicker = UIPickerView(frame: CGRectMake(0, dayPicker.frame.origin.y+dayPicker.frame.size.height+10, 2*self.view.frame.size.width/3, 50))
        timePicker.center.x = self.view.frame.size.width/2
        timePicker.delegate = self
        timePicker.showsSelectionIndicator = true
        self.view.addSubview(timePicker)
        
        // Request Button
        let requestButton = UIButton(frame: CGRectMake(0, self.view.frame.size.height-60, self.view.frame.size.width, 60))
        requestButton.backgroundColor = UIColor(red: 0.85, green: 0.2, blue: 0.3, alpha: 1)
        requestButton.setTitle("Request", forState: .Normal)
        requestButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        requestButton.titleLabel?.font = UIFont(name: "Helvetica Neue", size: 26)
        self.view.addSubview(requestButton)
    }
    
    override func viewWillAppear(animated: Bool) {
        self.navigationController?.navigationBarHidden = false
    }
    
    // MARK: Picker Data Source
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return daysAvailable[row]
    }
}
