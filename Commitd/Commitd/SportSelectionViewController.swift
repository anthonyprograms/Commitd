//
//  SportSelectionViewController.swift
//  Commitd
//
//  Created by Anthony Williams on 8/24/15.
//  Copyright (c) 2015 Anthony Williams. All rights reserved.
//

import UIKit

class SportSelectionViewController: UITableViewController {

    var sports = ["Baseball", "Basketball", "Football", "Golf", "Soccer", "Swimming", "Tennis", "Volleyball", "Water Polo"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.bounces = false
        self.tableView.rowHeight = 50
        self.tableView.backgroundColor = UIColor.whiteColor()
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }

    // MARK: Table View Data Source
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sports.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! UITableViewCell
        
        cell.selectionStyle = .None
        
        cell.textLabel?.textColor = UIColor.blackColor()
        cell.textLabel?.textAlignment = .Center
        cell.backgroundColor = UIColor.clearColor()
        cell.textLabel?.font = UIFont(name: "HelveticaNeue-Light", size: 22)
        cell.textLabel?.text = sports[indexPath.row]
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.navigationController?.popToRootViewControllerAnimated(true)
    }
}
