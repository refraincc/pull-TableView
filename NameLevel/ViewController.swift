//
//  ViewController.swift
//  NameLevel
//
//  Created by user on 16/9/2.
//  Copyright © 2016年 cc. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    let imageView :UIImageView! = UIImageView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        imageView.image = UIImage(named: "123.jpg")
        imageView.frame = CGRectMake(0, -200, UIScreen.mainScreen().bounds.width, 200)
        imageView.contentMode = .ScaleAspectFill
        tableView.insertSubview(imageView, atIndex: 0)
        
        self.tableView.contentInset = UIEdgeInsetsMake(200, 0, 0, 0);
        
        
    }
    
    override func scrollViewDidScroll(scrollView: UIScrollView) {
        let offsetY = scrollView.contentOffset.y;
        let down = -200 - offsetY
        if down < 0 {
            return
        }
        
        var frame = imageView.frame
        frame.origin.y = -200 - down
        frame.size.height = 200 + down
        imageView.frame = frame
        
    }

    
}

