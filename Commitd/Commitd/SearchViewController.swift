//
//  SearchViewController.swift
//  Commitd
//
//  Created by Anthony Williams on 8/26/15.
//  Copyright (c) 2015 Anthony Williams. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let scheduleViewController = ScheduleViewController()
    var tableView = UITableView()
    var users = ["Anthony", "Billy", "Tian", "Bella", "Fella", "Elliot"]
    
    override func viewDidLoad() {
//        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.whiteColor()
//        self.navigationController?.navigationBarHidden = false
//        self.navigationController?.navigationItem.hidesBackButton = true
        
        self.tableView.frame = view.frame
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.bounces = false
        self.tableView.rowHeight = 200
        self.tableView.separatorColor = UIColor( red: CGFloat(190/255.0), green: CGFloat(50/255.0), blue: CGFloat(0/255.0), alpha: CGFloat(0.7))
        self.tableView.backgroundColor = UIColor.clearColor()
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.view.addSubview(self.tableView)
    }
    
    override func viewWillAppear(animated: Bool) {
        self.navigationController?.navigationBarHidden = true
    }
    
    // MARK: Table View Data Source
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! UITableViewCell
        
        cell.selectionStyle = .None
        
//        cell.imageView?.image = UIImage(named: "temp")
//        cell.imageView?.frame = CGRectMake(0, 0, cell.frame.size.width/4, cell.frame.size.width/4)
//        cell.imageView?.layer.cornerRadius = cell.frame.size.width/8
//        cell.imageView?.layer.masksToBounds = true
        
        cell.textLabel?.textColor = UIColor.whiteColor()
        cell.textLabel?.textAlignment = .Left
        cell.backgroundColor = UIColor( red: CGFloat(0), green: CGFloat(0.8), blue: CGFloat(0.55), alpha: CGFloat(1.0))
        cell.textLabel?.font = UIFont(name: "HelveticaNeue-Light", size: 22)
        cell.textLabel?.text = users[indexPath.row]
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.navigationController?.pushViewController(scheduleViewController, animated: true)
    }

}
