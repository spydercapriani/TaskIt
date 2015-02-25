//
//  AddTaskViewController.swift
//  TaskIt
//
//  Created by Daniel Gilbert on 2/24/15.
//  Copyright (c) 2015 Daniel Gilbert. All rights reserved.
//

import UIKit
import CoreData

class AddTaskViewController: UIViewController {

    var mainVC:ViewController!
    
    
    @IBOutlet weak var txtTask: UITextField!
    @IBOutlet weak var txtSubtask: UITextField!
    @IBOutlet weak var dueDate: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Button Actions
    @IBAction func cancelButtonPressed(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

    @IBAction func addTaskButtonPressed(sender: UIButton) {
        // Core Data Saving
        let delegate = (UIApplication.sharedApplication().delegate as AppDelegate)
        let managedObjectContext = delegate.managedObjectContext
        let entityDescription = NSEntityDescription.entityForName("TaskModel", inManagedObjectContext: managedObjectContext!)
        
        let task = TaskModel(entity: entityDescription!, insertIntoManagedObjectContext: managedObjectContext!)
        task.task = txtTask.text
        task.subtask = txtSubtask.text
        task.date = dueDate.date
        task.isCompleted = false
        delegate.saveContext()
        
        var request = NSFetchRequest(entityName: "TaskModel")
        var error:NSError? = nil
        var results:NSArray = managedObjectContext!.executeFetchRequest(request, error: &error)!
        for res in results {
            println(res)
        }
        
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}
