//
//  TaskModel.swift
//  TaskIt
//
//  Created by Daniel Gilbert on 2/25/15.
//  Copyright (c) 2015 Daniel Gilbert. All rights reserved.
//

import Foundation
import CoreData

@objc(TaskModel) // Backwards compatible with Objective-C
class TaskModel: NSManagedObject {

    @NSManaged var isCompleted: NSNumber
    @NSManaged var date: NSDate
    @NSManaged var subtask: String
    @NSManaged var task: String

}
