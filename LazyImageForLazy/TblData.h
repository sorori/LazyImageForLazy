//
//  TblData.h
//  LazyImageForLazy
//
//  Created by porori on 13. 1. 19..
//  Copyright (c) 2013년 porori. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TblData : NSObject

+ (TblData *)sharedData;

@property (readonly) NSArray *data;

@end
