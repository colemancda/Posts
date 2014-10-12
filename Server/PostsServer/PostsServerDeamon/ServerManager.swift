//
//  ServerManager.swift
//  TempPostsServer
//
//  Created by Alsey Coleman Miller on 9/27/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

import Foundation
import CoreData
import NetworkObjects

public class ServerManager: ServerDataSource, ServerDelegate {
    
    // MARK: - Properties
    
    public lazy var server: Server = self.initServer()
    
    public let managedObjectContext = NSManagedObjectContext(concurrencyType: .PrivateQueueConcurrencyType)
    
    // MARK: - Private Properties
    
    private let model = NSManagedObjectModel(contentsOfURL: NSBundle(identifier: "com.ColemanCDA.CorePosts")!.URLForResource("Model", withExtension: "momd")!)!
    
    private var latestResourceIDForEntity = [NSEntityDescription: UInt]()
    
    // MARK: - Initialization
    
    public class var sharedManager : ServerManager {
        struct Static {
            static var onceToken : dispatch_once_t = 0
            static var instance : ServerManager? = nil
        }
        dispatch_once(&Static.onceToken) {
            Static.instance = ServerManager()
        }
        return Static.instance!
    }
    
    public init() {
        
        // setup persistent store
        self.managedObjectContext.persistentStoreCoordinator = NSPersistentStoreCoordinator(managedObjectModel: self.model)
        
        let error = NSErrorPointer()
        
        self.managedObjectContext.persistentStoreCoordinator?.addPersistentStoreWithType(NSInMemoryStoreType, configuration: nil, URL: nil, options: nil, error: error)!
    }
    
    private func initServer() -> Server {
        
        return Server(dataSource: self, delegate: self, managedObjectModel: self.model, searchPath: "search", resourceIDAttributeName: "id", prettyPrintJSON: false, sslIdentityAndCertificates: nil, permissionsEnabled: true)
    }
    
    // MARK: - ServerDataSource
    
    public func server(server: Server, resourcePathForEntity entity: NSEntityDescription) -> String {
        
        return entity.name!
    }
    
    public func server(server: Server, managedObjectContextForRequest request: ServerRequest) -> NSManagedObjectContext {
        
        return managedObjectContext;
    }
    
    public func server(server: Server, newResourceIDForEntity entity: NSEntityDescription) -> UInt {
        
        // get last resource ID
        let lastResourceID = self.latestResourceIDForEntity[entity]
        
        // create new one
        var newResourceID: UInt = 0
        
        // if not first resource ID, increment by 1
        if lastResourceID != nil {
            
            newResourceID = lastResourceID! + 1;
        }
        
        // save new one
        self.latestResourceIDForEntity[entity] = newResourceID;
        
        return newResourceID
    }
    
    public func server(server: Server, functionsForEntity entity: NSEntityDescription) -> [String] {
        
        switch entity.name! {
            case "Post":
            return ["like"]
        case "User":
            return ["authenticate"]
        default:
            return []
        }
    }
    
    public func server(server: Server, performFunction functionName: String, forManagedObject managedObject: NSManagedObject, context: NSManagedObjectContext, recievedJsonObject: [String : AnyObject]?) -> (ServerFunctionCode, [String : AnyObject]?) {
        
        if managedObject.entity.name == "Post" {
            
            if functionName == "like" {
                
                context.performBlockAndWait({ () -> Void in
                    
                    
                    
                })
            }
        }
        
        if managedObject.entity.name == "User" {
            
            if functionName == "authenticate" {
                
                context.performBlockAndWait({ () -> Void in
                    
                    
                    
                })
            }
        }
        
        return (ServerFunctionCode.CannotPerformFunction, nil)
    }
    
    // MARK: - ServerDelegate
    
    public func server(server: Server, didEncounterInternalError error: NSError, forRequest request: ServerRequest, userInfo: [ServerUserInfoKey: AnyObject]) {
        
        println("Internal error occurred for request: \(request), userInfo: \(userInfo). (\(error))")
    }
    
    public func server(server: Server, didPerformRequest request: ServerRequest, withResponse response: ServerResponse, userInfo: [ServerUserInfoKey: AnyObject]) {
        
        println("Successfully performed request and responded with: (\(response.statusCode.rawValue)) \(response.JSONResponse)")
    }
    
    public func server(server: Server, statusCodeForRequest request: ServerRequest, managedObject: NSManagedObject?, context: NSManagedObjectContext?) -> ServerStatusCode {
        
        return ServerStatusCode.OK
    }
    
    public func server(server: Server, permissionForRequest request: ServerRequest, managedObject: NSManagedObject?, context: NSManagedObjectContext?, key: String?) -> ServerPermission {
        
        return ServerPermission.EditPermission
    }
   
}
