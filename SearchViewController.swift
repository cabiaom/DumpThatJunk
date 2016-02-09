//
//  SearchViewController.swift
//  DumpThatJunk
//
//  Created by Mark CABIAO on 2/1/16.
//  Copyright © 2016 Mark CABIAO. All rights reserved.
//

import UIKit

// need to rename this to MenuItemViewController somehow
// I tried before but it crashes the app

class SearchViewController: UIViewController {
    
    @IBOutlet weak var SearchLabel: UILabel!
    @IBOutlet weak var searchImage: UIImageView!
    
    var menu: Menu?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let m = menu {
            SearchLabel.text = m.name
            if let i = m.menuImage
            {
                searchImage.image = UIImage(named: i)
            }
        }
        
        
        
        

        // Do any additional setup after loading the view.
    }

    @IBAction func searchButtonPressed(sender: AnyObject) {
        print("Search Button Pressed")
    }
   
    
    
}
