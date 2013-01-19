//
//  ArrayRetainDataSource.m
//  LazyImageForLazy
//
//  Created by porori on 13. 1. 20..
//  Copyright (c) 2013년 porori. All rights reserved.
//

#import "ArrayRetainDataSource.h"

@implementation ArrayRetainDataSource

@synthesize myTableView;

- (id)init
{
    self = [super initWithTitle:@"AR"];
    if(self) {
        imageRepository = [[NSMutableDictionary alloc] init];
        imageDownloaders = [[NSMutableDictionary alloc] init];
    }
    
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
    
    cell.textLabel.text = @"test";
    if([imageRepository objectForKey:indexPath] != nil) {
        cell.imageView.image = [UIImage imageWithData:(NSData *)[imageRepository objectForKey:indexPath]];
    } else {
        cell.imageView.image = [UIImage imageNamed:@"psy.jpg"];
        if([imageDownloaders objectForKey:indexPath] == nil) {
            ImageDownloader *imageDownloader = [[ImageDownloader alloc] initWithURL:[NSURL URLWithString:url] indexPath:indexPath];
            imageDownloader.delegate = self;
            [imageDownloaders setObject:imageDownloader forKey:indexPath];
            [imageDownloader download];
        }
    }
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 150.0f;
}

- (void)imageDownloadComplete:(NSIndexPath *)_indexPath withData:(NSData *)_data
{
    if(_data == nil) {
        NSLog(@"data is nil");
        return;
    }
    [imageRepository setObject:_data forKey:_indexPath];
    
    UITableViewCell *cell = [myTableView cellForRowAtIndexPath:_indexPath];
    cell.imageView.image = [UIImage imageWithData:[imageRepository objectForKey:_indexPath]];
    
    [imageDownloaders removeObjectForKey:_indexPath];
}
@end
