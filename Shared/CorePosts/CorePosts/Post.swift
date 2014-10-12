//
//  Post.swift
//  CorePosts
//
//  Created by Alsey Coleman Miller on 10/4/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

import Foundation
import CoreData

class Post: NSManagedObject {

    @NSManaged var date: NSDate
    @NSManaged var id: NSNumber
    @NSManaged var text: String
    @NSManaged var attachment: Attachment
    @NSManaged var likes: NSSet
    @NSManaged var user: User

}
