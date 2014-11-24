//
//  Post.swift
//  CorePosts
//
//  Created by Alsey Coleman Miller on 10/4/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

import Foundation
import CoreData

public class Post: NSManagedObject {

    @NSManaged public var id: UInt
    @NSManaged public var date: NSDate
    @NSManaged public var text: String
    @NSManaged public var attachment: Attachment?
    @NSManaged public var likes: NSSet?
    @NSManaged public var user: User
}