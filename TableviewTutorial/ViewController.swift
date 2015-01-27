//
//  ViewController.swift
//  TableviewTutorial
//
//  Created by Ravindra Kishan on 16/01/15.
//  Copyright (c) 2015 Ravindra Kishan. All rights reserved.
//

import UIKit


class CustomCell: UITableViewCell
{
    
    @IBOutlet var countryImage: UIImageView!
    @IBOutlet var CountryName: UILabel!
}

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource
{

    @IBOutlet var tableView: UITableView!
    let CellIdentifier: String = "customcell"

    var tableData:[String] = ["Qwinix", "Mysore", "Denver", "Dubai","Costa rica", "Swift"]
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       // self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier:"cell")

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
    
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
    {
        return 80
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
      //  var cell:UITableViewCell = self.tableView.dequeueReusableCellWithIdentifier("cell") as UITableViewCell
        
        let cell: CustomCell = tableView.dequeueReusableCellWithIdentifier(CellIdentifier) as CustomCell
         cell.CountryName.text = tableData[indexPath.row]
           switch indexPath.row
           {
               case 0:
                cell.countryImage.image = UIImage (named:"qwinix-logo-fb.png")
                
               case 1:
                cell.countryImage.image = UIImage (named:"Flag_of_India.png")
                
               case 2:
                cell.countryImage.image = UIImage (named:"Flag_of_United_States.png")
                
               case 3:
                cell.countryImage.image = UIImage (named:"Flag_of_Palestine.png")
                
               case 4:
                cell.countryImage.image = UIImage (named:"Flag_of_Thailand.png")
            
              case 5:
                cell.countryImage.image = UIImage (named:"Apple_Swift_Logo.png")
            
               default:
                println("Over")
        }
          return cell
    }
    
}

