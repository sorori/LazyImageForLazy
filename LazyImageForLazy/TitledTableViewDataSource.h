//
//  TitledTableViewDataSource.h
//  LazyImageForLazy
//
//  Created by porori on 13. 1. 19..
//  Copyright (c) 2013년 porori. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TitledTableViewDataSource : NSObject <UITableViewDataSource, UITableViewDelegate>

- (id)initWithTitle:(NSString *)titleString;

@property (readonly) NSString *title;

@end
