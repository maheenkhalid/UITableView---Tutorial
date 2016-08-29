//
//  ViewController.swift
//  UITableView - Tutorial
//
//  Created by Maheen Khalid on 8/26/16.
//  Copyright © 2016 Maheen Khalid. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableview.delegate = self
        tableview.dataSource = self
        
        tableview.registerClass(UITableViewCell.self, forCellReuseIdentifier: "CELL");
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: - UITableViewDataSource Methods -
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CELL", forIndexPath: indexPath)
        
        cell.textLabel?.text = "Cell is: \(indexPath.row)"
        
        return cell
    }
    
    //MARK: - UITableViewDelegate Methods -
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 64
    }

}

