//
//  DetailViewController.swift
//  bazingalocal
//
//  Created by Srini on 9/26/14.
//  Copyright (c) 2014 pcchack. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!
    @IBOutlet var name: UITextField!
    @IBOutlet var startDate: UITextField!
    @IBOutlet var endDate: UITextField!
    @IBOutlet var frequency: UITextField!
    @IBOutlet var alarm: UITextField!


    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
        // Update the user interface for the detail item.
        if let detail: AnyObject = self.detailItem {
            if let label = self.detailDescriptionLabel {
                label.text = detail.valueForKey("timeStamp").description
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Events
    @IBAction func btnAddTask_Click(sender: UIButton) {
        taskMgr.addTask(name.text, desc: startDate.text+"--"+endDate.text+" at Frequency of: " + frequency.text)
        self.view.endEditing(true)
        name.text = ""
        startDate.text = ""
        endDate.text = ""
        frequency.text = ""
        alarm.text = ""
        self.tabBarController?.selectedIndex = 0;
    }
    
    //IOS Touch Functions
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
    //UITextField Delegate
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        textField.resignFirstResponder();
        return true
    }



}

