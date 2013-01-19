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
    return 12;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyIdentifier"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"MyIdentifier"];
    }
    NSString *url = [[TblData sharedData].data objectAtIndex:indexPath.row];
    NSLog(@"url: %@", url);
    
    cell.textLabel.text = @"test";
    // Dummy icon //
    cell.imageView.image = [UIImage imageNamed:@"psy.jpg"];
    [cell.imageView setImageWithURL:[NSURL URLWithString:url]];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 150.0f;
}
@end
