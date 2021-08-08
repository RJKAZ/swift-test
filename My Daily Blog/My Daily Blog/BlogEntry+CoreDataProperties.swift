//
//  BlogEntry+CoreDataProperties.swift
//  My Daily Blog
//
//  Created by Reese RJ Kaz on 8/8/21.
//
//

import Foundation
import CoreData


extension BlogEntry {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<BlogEntry> {
        return NSFetchRequest<BlogEntry>(entityName: "BlogEntry")
    }

    @NSManaged public var date: Date?
    @NSManaged public var content: String?

}

extension BlogEntry : Identifiable {

}
