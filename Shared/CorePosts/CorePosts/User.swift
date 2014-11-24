//
//  User.swift
//  CorePosts
//
//  Created by Alsey Coleman Miller on 10/4/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

import Foundation
import CoreData

public class User: NSManagedObject {

    @NSManaged public var id: UInt
    @NSManaged public var username: String
    @NSManaged public var password: String
    @NSManaged public var email: String?
    @NSManaged public var likedPosts: NSSet?
    @NSManaged public var posts: NSSet?
    @NSManaged public var followers: NSSet?
    @NSManaged public var following: NSSet?
    @NSManaged public var sessions: NSSet?
}
