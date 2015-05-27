//
//  Notes2ViewController.swift
//  FindRachel
//
//  Created by Mayara Gasparini Dias  on 27/05/15.
//  Copyright (c) 2015 Julia Motta Baitelli. All rights reserved.
//

import UIKit

class Notes2ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBAction func backButton(sender: AnyObject) {
    
    self.dismissViewControllerAnimated(true, completion: nil)
        
    }
    @IBOutlet var tableView: UITableView!
    
    var tableData = ["My life turned into a nightmare...","Today I went to college...","I've never felt this way...", "Love you, xoxo Chloe...", "Hey beauty, you sould...", "Buy eggs", "Download: Gone Girl "]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
        
        var nib = UINib(nibName: "NotesCell", bundle: nil)
        tableView.registerNib(nib, forCellReuseIdentifier: "cell")
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell:NotesTableViewCell = self.tableView.dequeueReusableCellWithIdentifier("cell") as! NotesTableViewCell
        
        cell.labelNotes.text = tableData[indexPath.row]
        
        
        
        return cell
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    
        println(indexPath.row)
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 50
    }
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
