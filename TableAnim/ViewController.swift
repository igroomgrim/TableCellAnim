//
//  ViewController.swift
//  TableAnim
//
//  Created by Anak Mirasing on 2/19/2558 BE.
//  Copyright (c) 2558 iGROOMGRiM. All rights reserved.
//

import UIKit



class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    let scRect:CGRect = UIScreen.mainScreen().bounds
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: TableView Delegate & DataSource
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 40
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 60.0
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let animCell = tableView.dequeueReusableCellWithIdentifier("CellAnim") as UITableViewCell
        animCell.textLabel?.text = "ROW : \(indexPath.row)"
        return animCell
    }
    
    // MARK: Animation Cell with Spring Damping
    func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        
        cell.frame = CGRectMake(scRect.width, cell.frame.origin.y, cell.frame.size.width, cell.frame.size.height)
        
        UIView.animateWithDuration(1.0, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 0.6, options: UIViewAnimationOptions.CurveEaseIn, animations: {
            cell.frame = CGRectMake(0, cell.frame.origin.y, cell.frame.size.width, cell.frame.size.height)
            }, completion: { finished in
        
        })
    }
}

