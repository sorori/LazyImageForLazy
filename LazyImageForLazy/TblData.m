//
//  TblData.m
//  LazyImageForLazy
//
//  Created by porori on 13. 1. 19..
//  Copyright (c) 2013년 porori. All rights reserved.
//

#import "TblData.h"

@implementation TblData

static TblData *sharedInstance;

@synthesize data;

+ (TblData *)sharedData
{
    if(sharedInstance == nil) {
        sharedInstance = [[super alloc] init];
    }
    return sharedInstance;
}

- (id)init
{
    self = [super init];
    if(self) {
        // Path to the plist (in the application bundle)
        NSString *path = [[NSBundle mainBundle] pathForResource:
                          @"imageList" ofType:@"plist"];
        
        // Build the array from the plist
        data = [[NSMutableArray alloc] initWithContentsOfFile:path];
    }
    
    return self;
}
@end
