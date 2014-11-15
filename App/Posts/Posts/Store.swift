//
//  Store.swift
//  Posts
//
//  Created by Alsey Coleman Miller on 10/18/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

import NetworkObjects
import CoreData

/** Class that manages the store data. */
class StoreManager {
    
    // MARK: - Properties
    
    var store: Store? {
        get {
            return _store;
        }
    }
    
    // MARK: - Private Properties
    
    private var _store: Store?
    
    // MARK: - Initialization
    
    class var sharedManager : StoreManager {
        struct Static {
            static var onceToken : dispatch_once_t = 0
            static var instance : StoreManager? = nil
        }
        dispatch_once(&Static.onceToken) {
            
            Static.instance = StoreManager()
        }
        return Static.instance!
    }
    
    
}