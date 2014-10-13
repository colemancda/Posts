//
//  main.m
//  PostsServerDaemon
//
//  Created by Alsey Coleman Miller on 10/13/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import <Foundation/Foundation.h>
@import NetworkObjects;

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        [[ServerHTTPServer alloc] init];
    }
    return 0;
}
