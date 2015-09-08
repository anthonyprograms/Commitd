//
//  ReviewsViewController.swift
//  Commitd
//
//  Created by Anthony Williams on 8/26/15.
//  Copyright (c) 2015 Anthony Williams. All rights reserved.
//

import UIKit

class ReviewsViewController: UITableViewController {

    var reviews = ["Best trainer of all time", "Coolest dude I've ever met", "Wouldn't want any other trainer"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.whiteColor()
        self.title = "Reviews"
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.rowHeight = 150
        self.tableView.backgroundColor = UIColor.clearColor()
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    override func viewWillAppear(animated: Bool) {
        self.navigationController?.navigationBarHidden = false
    }
    
    // MARK: Table View Data Source
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return reviews.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! UITableViewCell
        
        cell.selectionStyle = .None
        
        cell.textLabel?.textColor = UIColor.whiteColor()
        cell.textLabel?.textAlignment = .Center
        cell.backgroundColor = UIColor( red: CGFloat(0), green: CGFloat(0.5), blue: CGFloat(0.7), alpha: CGFloat(1.0))
        cell.textLabel?.font = UIFont(name: "HelveticaNeue-Light", size: 22)
        cell.textLabel?.text = reviews[indexPath.row]
        
        return cell
    }
}
