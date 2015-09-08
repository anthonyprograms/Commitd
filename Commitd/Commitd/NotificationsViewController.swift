//
//  NotificationsViewController.swift
//  Commitd
//
//  Created by Anthony Williams on 8/26/15.
//  Copyright (c) 2015 Anthony Williams. All rights reserved.
//

import UIKit

class NotificationsViewController: UITableViewController {

    var notifications = ["Bill wants to be trained in Basketball on Tuesday @ 3pm", "Anthony agrees to train you in Football on Thursday @ 5pm"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Notifications"
        self.navigationItem.hidesBackButton = true
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.rowHeight = 80
        self.tableView.backgroundColor = UIColor.whiteColor()
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    override func viewWillAppear(animated: Bool) {
        self.navigationController?.navigationBarHidden = false
        self.navigationItem.hidesBackButton = true
    }
    
    // MARK: Table View Data Source
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return notifications.count
        return 25
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! UITableViewCell
        
        cell.selectionStyle = .None
        
        cell.textLabel?.textColor = UIColor.blackColor()
        cell.textLabel?.textAlignment = .Left
        cell.textLabel?.numberOfLines = 0
        cell.textLabel?.sizeToFit()
        cell.textLabel?.font = UIFont(name: "HelveticaNeue-Light", size: 18)
        cell.textLabel?.text = notifications[0]
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//        self.navigationController?.pushViewController(searchViewController, animated: true)
    }
}
