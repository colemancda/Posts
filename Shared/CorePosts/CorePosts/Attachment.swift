//
//  Attachment.swift
//  CorePosts
//
//  Created by Alsey Coleman Miller on 10/4/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

import Foundation
import CoreData

public class Attachment: NSManagedObject {

    @NSManaged public var id: UInt
    @NSManaged public var post: Post

}
