//
//  Contact+CoreDataProperties.swift
//  ViperExample
//
//  Created by Phuong Nguyen on 11/16/17.
//  Copyright © 2017 Phuong Nguyen. All rights reserved.
//
//

import Foundation
import CoreData


extension Contact {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Contact> {
        return NSFetchRequest<Contact>(entityName: "Contact")
    }

    @NSManaged public var firstName: String?
    @NSManaged public var lastName: String?

}
