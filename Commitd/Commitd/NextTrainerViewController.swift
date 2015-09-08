//
//  NextTrainerViewController.swift
//  Commitd
//
//  Created by Anthony Williams on 8/27/15.
//  Copyright (c) 2015 Anthony Williams. All rights reserved.
//

import UIKit

class NextTrainerViewController: UIViewController, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var descriptionBox: UILabel!
    var words = ["High School Experience", "College Experience", "Pro Experience", "D1 College Experience","anthon","bvcx","234","zcxv","asdf"]
    var trainerDescription:NSMutableArray = NSMutableArray()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Description
        descriptionBox.font = UIFont(name: "Helvetica Neue", size: 18)
        descriptionBox.text = ""
        descriptionBox.layer.borderColor = UIColor.blackColor().CGColor
        descriptionBox.layer.borderWidth = 0.5
        descriptionBox.layer.masksToBounds = true
        
        // Key Words for Description
        tableView.delegate = self
        tableView.backgroundColor = UIColor.whiteColor()
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        // Done Button
        var doneButton = UIButton(frame: CGRectMake(0, self.view.frame.size.height-60, self.view.frame.size.width, 60))
        doneButton.titleLabel?.font = UIFont(name: "Helvetica Neue", size: 24)
    }
    
    // MARK: Button Actions
    
    @IBAction func donePressed(sender: UIButton) {
        // Send Data to Parse
        
        // Alert that it has been completed
        
        // On Alert OK
        self.navigationController?.popToRootViewControllerAnimated(true)
    }
    
    // MARK: Table View Data Source
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return words.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! UITableViewCell
        
        cell.selectionStyle = .None
        
        cell.textLabel?.textColor = UIColor.blackColor()
        cell.textLabel?.textAlignment = .Center
        cell.textLabel?.font = UIFont(name: "HelveticaNeue-Light", size: 20)
        cell.textLabel?.text = words[indexPath.row]
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        descriptionBox.text = (descriptionBox.text ?? "") + "\(words[indexPath.row]), "
        trainerDescription.addObject(words[indexPath.row])
    }
}
