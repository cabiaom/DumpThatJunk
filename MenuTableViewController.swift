//
//  MenuTableViewController.swift
//  DumpThatJunk
//
//  Created by Mark CABIAO on 2/1/16.
//  Copyright © 2016 Mark CABIAO. All rights reserved.
//

import UIKit

class MenuTableViewController: UITableViewController {
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("MenuCell", forIndexPath: indexPath)
        cell.textLabel?.text = "Search"
        cell.imageView?.image = UIImage(named:"SearchButton")
        
        return cell
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ShowSearch"{
            let menuVC = segue.destinationViewController as? SearchViewController
            menuVC?.menuName = "Find Your Stuff"
        }
    }

   
}
