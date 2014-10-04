//
//  User.swift
//  CorePosts
//
//  Created by Alsey Coleman Miller on 10/4/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

import Foundation
import CoreData

class User: NSManagedObject {

    @NSManaged var id: NSNumber
    @NSManaged var likedPosts: NSSet
    @NSManaged var posts: NSSet
    @NSManaged var connectedClients: NSManagedObject

}
