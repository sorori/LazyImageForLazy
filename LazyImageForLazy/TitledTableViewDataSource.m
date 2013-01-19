//
//  TitledTableViewDataSource.m
//  LazyImageForLazy
//
//  Created by porori on 13. 1. 19..
//  Copyright (c) 2013년 porori. All rights reserved.
//

#import "TitledTableViewDataSource.h"

@implementation TitledTableViewDataSource

@synthesize title, myTableView;

- (id)initWithTitle:(NSString *)titleString
{
    self = [super init];
    if(self) {
        title = [titleString copy];
    }
    return self;
}
@end
