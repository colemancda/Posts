//
//  Client.swift
//  CorePosts
//
//  Created by Alsey Coleman Miller on 10/4/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

import Foundation
import CoreData

class Client: NSManagedObject {

    @NSManaged var firstParty: NSNumber
    @NSManaged var id: NSNumber
    @NSManaged var platform: String
    @NSManaged var secret: String
    @NSManaged var users: User

}
