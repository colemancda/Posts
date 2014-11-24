//
//  Session.swift
//  CorePosts
//
//  Created by Alsey Coleman Miller on 11/23/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

import Foundation
import CoreData

public class Session: NSManagedObject {

    @NSManaged public var id: UInt
    @NSManaged public var token: String
    @NSManaged public var user: User
}