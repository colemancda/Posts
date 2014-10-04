//
//  AppDelegate.swift
//  PostsServer
//
//  Created by Alsey Coleman Miller on 9/24/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

import Cocoa
import NetworkObjects

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    
    func applicationDidFinishLaunching(aNotification: NSNotification?) {
        // Insert code here to initialize your application
        
        // start server
        let port = 8080 as UInt
        
        let error = ServerManager.sharedManager.server.start(onPort: port)
        
        if error != nil {
            
            println("Could not start server. (\(error))")
            
            return
        }
        
        println("Started server on port \(port)")
    }

    func applicationWillTerminate(aNotification: NSNotification?) {
        // Insert code here to tear down your application
        
        ServerManager.sharedManager.server.stop()
    }
    
}

