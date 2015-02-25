//
//  TaskDetailViewController.swift
//  TaskIt
//
//  Created by Daniel Gilbert on 2/24/15.
//  Copyright (c) 2015 Daniel Gilbert. All rights reserved.
//

import UIKit

class TaskDetailViewController: UIViewController {
    
    var detailTaskModel:TaskModel!
    
    @IBOutlet weak var txtTask: UITextField!
    @IBOutlet weak var txtSubtask: UITextField!
    @IBOutlet weak var dueDate: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.txtTask.text = detailTaskModel.task
        self.txtSubtask.text = detailTaskModel.subtask
        self.dueDate.date = detailTaskModel.date
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cancelButtonPressed(sender: UIBarButtonItem) {
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    @IBAction func doneButtonPressed(sender: UIBarButtonItem) {
        let delegate = (UIApplication.sharedApplication().delegate as AppDelegate)
        detailTaskModel.task = txtTask.text
        detailTaskModel.subtask = txtSubtask.text
        detailTaskModel.date = dueDate.date
        detailTaskModel.isCompleted = detailTaskModel.isCompleted
        delegate.saveContext()
        
        self.navigationController?.popViewControllerAnimated(true)
    }
}
