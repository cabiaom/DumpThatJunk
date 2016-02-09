//
//  MenuTableViewController.swift
//  DumpThatJunk
//
//  Created by Mark CABIAO on 2/1/16.
//  Copyright © 2016 Mark CABIAO. All rights reserved.
//

import UIKit

class MenuTableViewController: UITableViewController {
    
    var menus: [Menu]?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let menu1 = Menu()
        let menu2 = Menu()
        let menu3 = Menu()
        let menu4 = Menu()
        
        menu1.name = "Add"
        menu2.name = "Search"
        menu3.name = "Browse"
        menu4.name = "Dump"
        
        menu1.menuImage = "AddButton"
        menu2.menuImage = "SearchButton"
        menu3.menuImage = "BrowseButton"
        menu4.menuImage = "DumpButton"
        
        menu1.cellImage = "AddButton"
        menu2.cellImage = "SearchButton"
        menu3.cellImage = "BrowseButton"
        menu4.cellImage = "DumpButton"
        
        
        
        menus = [ menu1, menu2, menu3, menu4 ]
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let m = menus {
            return m.count
        }
        return 0
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("MenuCell", forIndexPath: indexPath)
        
        let menur = menus?[indexPath.row]
        
        if let m = menur{
            cell.textLabel?.text = m.name
            if let i = m.cellImage{
                cell.imageView?.image = UIImage(named: i)
            }
        }
        
        //cell.textLabel?.text = "Search"
        
        
        return cell
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ShowMenu"{
            let menuVC = segue.destinationViewController as? SearchViewController
            
            guard let cell = sender as? UITableViewCell, let indexPath = tableView.indexPathForCell(cell) else { return }
                    menuVC?.menu = menus?[indexPath.row]
            
            
            
            //menuVC?.menuName = "Find Your Stuff"
        }
    }
   
}
