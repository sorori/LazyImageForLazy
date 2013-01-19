//
//  ASI_Operation_DataSource.m
//  LazyImageForLazy
//
//  Created by porori on 13. 1. 19..
//  Copyright (c) 2013년 porori. All rights reserved.
//

#import "ASI_Operation_DataSource.h"

@implementation ASI_Operation_DataSource

- (id)init
{
    self = [super initWithTitle:@"ASIOP"];
    
    return self;
}

#pragma tableView Datasource Delegate

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyIdentifier"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"MyIdentifier"];
    }
    cell.textLabel.text = @"test";
    cell.imageView.image = [UIImage imageNamed:@"first.png"];
    
    return cell;
}
@end
