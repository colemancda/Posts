//
//  main.m
//  PostsServerDaemon
//
//  Created by Alsey Coleman Miller on 10/13/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import <Foundation/Foundation.h>
@import NetworkObjects;
@import CorePostsServer;

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Initializing Server Manager...");
        
        [ServerManager sharedManager];
    }
    return 0;
}
