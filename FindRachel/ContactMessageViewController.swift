//
//  ContactMessageViewController.swift
//  FindRachel
//
//  Created by Thiago Gallego on 26/05/15.
//  Copyright (c) 2015 Julia Motta Baitelli. All rights reserved.
//

import UIKit

class ContactMessageViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let btableData = ["msg_1_1", "msg_1_2", "msg_1_3"]
    @IBOutlet weak var tableView: UITableView!
    @IBAction func backButton(sender: AnyObject) {
        var controller: Messages = Messages(nibName:"Messages", bundle:NSBundle.mainBundle())
        
        //self.presentViewController(controller, animated: true, completion: nil)
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Register custom cell
        var nib = UINib(nibName: "ContactMessagesTVCell", bundle: nil)
        tableView.registerNib(nib, forCellReuseIdentifier: "Cell")
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return btableData.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //let cell:UITableViewCell=UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "mycell")

        var cell:ContactMessagesCell = self.tableView.dequeueReusableCellWithIdentifier("Cell") as! ContactMessagesCell
        
        cell.messageImageView.image = UIImage(named:btableData[indexPath.row])
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        println("Row \(indexPath.row) selected")
        
//        var controller: MainScreen = MainScreen(nibName:"MainScreen", bundle:NSBundle.mainBundle())
//        
//        self.presentViewController(controller, animated: true, completion: nil)
//        
        
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {

        return 194
    }

}
