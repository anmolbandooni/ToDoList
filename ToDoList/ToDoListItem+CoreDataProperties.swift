//
//  ToDoListItem+CoreDataProperties.swift
//  ToDoList
//
//  Created by Tspl on 26/07/24.
//
//

import Foundation
import CoreData


extension ToDoListItem {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ToDoListItem> {//fetchRequest is how can we query all the todo list item we have saved in coredata
        return NSFetchRequest<ToDoListItem>(entityName: "ToDoListItem")
    }

    @NSManaged public var name: String?//actual properties that gets saved in coredata
    @NSManaged public var createdAt: Date?//basically @NSManaged is anything you want to save in core data you have to work with a manage con you can think as intermediatery b/w actual saved data in your database and your app

}

extension ToDoListItem : Identifiable {

}
