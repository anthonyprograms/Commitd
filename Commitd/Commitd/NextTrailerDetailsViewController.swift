//
//  NextTrailerDetailsViewController.swift
//  Commitd
//
//  Created by Anthony Williams on 8/27/15.
//  Copyright (c) 2015 Anthony Williams. All rights reserved.
//

import UIKit

class NextTrailerDetailsViewController: UIViewController {

    override func viewDidLoad() {
//        super.viewDidLoad()

        self.view.backgroundColor = UIColor.whiteColor()
        
        // Description
        var description = UITextView(frame: CGRectMake(5, 80, self.view.frame.size.width-10, 150))
        description.editable = false
        description.font = UIFont(name: "Helvetica Neue", size: 20)
        description.text = ""
        description.layer.borderColor = UIColor.blackColor().CGColor
        description.layer.borderWidth = 0.5
        description.layer.masksToBounds = true
        self.view.addSubview(description)
        
        // Key Words for Description
    }
}
