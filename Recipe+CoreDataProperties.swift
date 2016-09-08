//
//  Recipe+CoreDataProperties.swift
//  Resipe
//
//  Created by Tony Merritt on 08/09/2016.
//  Copyright © 2016 Tony Merritt. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Recipe {

    @NSManaged var image: NSData?
    @NSManaged var ingreadients: String?
    @NSManaged var steps: String?
    @NSManaged var title: String?

}
