//
//  ViewController.swift
//  TableViewController
//
//  Created by hemal patel on 21/08/14.
//  Copyright (c) 2014 Hml. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDataSource,UITableViewDelegate{
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        var tvc  = UITableView()
        let ds = self
        tvc.delegate = self
        tvc.dataSource = self
        tvc.frame = self.view.bounds
        
        self.view .addSubview(tvc)
        self.view.backgroundColor = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
        
        //tvc.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        
        var cell:UITableViewCell = UITableViewCell(style:.Value2, reuseIdentifier: "cell")
        let index = indexPath!.row;
        cell.textLabel.text = "Cell Index - \(index)"
        //cell.image = UIImage(named:"img.png")
        
        return cell
    }
    
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        let index = indexPath!.row;
        println("Cell Index - \(index)")
    }

}

