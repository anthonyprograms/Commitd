//
//  SearchViewController.swift
//  Commitd
//
//  Created by Anthony Williams on 8/26/15.
//  Copyright (c) 2015 Anthony Williams. All rights reserved.
//

import UIKit

class SearchViewController: UITableViewController {
    
    let scheduleViewController = ScheduleViewController()
    var users = ["Anthony", "Billy", "Thomas", "Bella", "Fella", "Elliot"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        // Navigation
        navigationItem.title = "Search Trainers"
        self.navigationItem.hidesBackButton = true
        
        // Table View
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.rowHeight = 150
        self.tableView.backgroundColor = UIColor.whiteColor()
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    // MARK: Button Actions
    
    @IBAction func beATrainer(sender: UIBarButtonItem) {
        self.performSegueWithIdentifier("PushTrainerDetails", sender: self)
    }
    
    // MARK: Table View Data Source
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! UITableViewCell
        
        cell.selectionStyle = .None
        
//        cell.imageView?.image = UIImage(named: "temp")
//        cell.imageView?.frame = CGRectMake(0, 0, cell.frame.size.width/4, cell.frame.size.width/4)
//        cell.imageView?.layer.cornerRadius = cell.frame.size.width/8
//        cell.imageView?.layer.masksToBounds = true
        
        cell.textLabel?.textColor = UIColor.blackColor()
        cell.textLabel?.textAlignment = .Left
        cell.backgroundColor = UIColor.clearColor()
        cell.textLabel?.font = UIFont(name: "HelveticaNeue-Light", size: 22)
        cell.textLabel?.text = users[indexPath.row]
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.performSegueWithIdentifier("PushSchedule", sender: self)
    }

}