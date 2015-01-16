//
//  ViewController.swift
//  TableviewTutorial
//
//  Created by Ravindra Kishan on 16/01/15.
//  Copyright (c) 2015 Ravindra Kishan. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource
{

    @IBOutlet var tableView: UITableView!
    var tableData:[String] = ["Qwinix", "Mysore", "Denver", "Dubai","Costa rica", "Swift"]
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier:"cell")

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //MARK : TableView Delegate and DataSource Methods
    func numberOfSectionsInTableView(tableView: UITableView) -> Int
    {
      return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return tableData.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        var cell:UITableViewCell = self.tableView.dequeueReusableCellWithIdentifier("cell") as UITableViewCell
        cell.textLabel?.text = tableData[indexPath.row]
        return cell
    }
    
}

