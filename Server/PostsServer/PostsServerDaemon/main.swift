//
//  main.swift
//  PostsServerDaemon
//
//  Created by Alsey Coleman Miller on 10/12/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

import Foundation
import NetworkObjects

// start server
let port = 8080 as UInt

func initialize() {
    
    let error = ServerManager.sharedManager.server.start(onPort: port)
    
    if error != nil {
        
        println("Could not start server. (\(error))")
        
        return
    }
    
    println("Started server on port \(port)")
}

initialize()