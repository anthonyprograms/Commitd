//
//  NotificationsViewController.swift
//  Commitd
//
//  Created by Anthony Williams on 8/26/15.
//  Copyright (c) 2015 Anthony Williams. All rights reserved.
//

import UIKit

class NotificationsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var tableView = UITableView()
    var notifications = ["Bill wants to be trained in Basketball on Tuesday @ 3pm", "Anthony agrees to train you in Soccer on Thursday @ 5pm"]
    
    override func viewDidLoad() {
//        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.whiteColor()
        self.title = "Notifications"

        self.tableView.frame = view.frame
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.bounces = false
        self.tableView.rowHeight = 80
        self.tableView.separatorColor = UIColor( red: CGFloat(190/255.0), green: CGFloat(50/255.0), blue: CGFloat(0/255.0), alpha: CGFloat(0.7))
        self.tableView.backgroundColor = UIColor.clearColor()
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.view.addSubview(self.tableView)
    }
    
    // MARK: Table View Data Source
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notifications.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! UITableViewCell
        
        cell.selectionStyle = .None
        
        cell.textLabel?.textColor = UIColor.whiteColor()
        cell.textLabel?.textAlignment = .Left
        cell.textLabel?.font = UIFont(name: "HelveticaNeue-Light", size: 18)
        cell.textLabel?.text = notifications[indexPath.row]
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//        self.navigationController?.pushViewController(searchViewController, animated: true)
    }
}
