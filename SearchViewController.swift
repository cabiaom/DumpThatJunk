//
//  SearchViewController.swift
//  DumpThatJunk
//
//  Created by Mark CABIAO on 2/1/16.
//  Copyright © 2016 Mark CABIAO. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {
    
    @IBOutlet weak var SearchLabel: UILabel!

    @IBOutlet weak var searchImage: UIImageView!
    
    var menuName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        SearchLabel.text = menuName
        searchImage.image = UIImage(named: "SearchButton")
        

        // Do any additional setup after loading the view.
    }

    @IBAction func searchButtonPressed(sender: AnyObject) {
        print("Search Button Pressed")
    }
   
    
    
}
