//
//  DirectURLDataSource.m
//  LazyImageForLazy
//
//  Created by porori on 13. 1. 19..
//  Copyright (c) 2013년 porori. All rights reserved.
//

#import "DirectURLDataSource.h"

@implementation DirectURLDataSource

- (id)init
{
    self = [super initWithTitle:@"Direct"];
    
    return self;
}

#pragma tableView Datasource Delegate

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyIdentifier"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"MyIdentifier"];
    }
    NSString *url = [[TblData sharedData].data objectAtIndex:indexPath.row];
    
    cell.textLabel.text = @"test";
    cell.imageView.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:url]]];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 150.0f;
}
@end
