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
        
        println("\(ServerStatusCode.OK.rawValue)");
    }

    func applicationWillTerminate(aNotification: NSNotification?) {
        // Insert code here to tear down your application
    }


}

