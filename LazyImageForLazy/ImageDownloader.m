//
//  ImageDownloader.m
//  LazyImageForLazy
//
//  Created by porori on 13. 1. 20..
//  Copyright (c) 2013년 porori. All rights reserved.
//

#import "ImageDownloader.h"

@implementation ImageDownloader

@synthesize delegate;

- (id)initWithURL:(NSURL *)_url indexPath:(NSIndexPath *)_indexPath
{
    self = [super init];
    if(self) {
        url = [_url copy];
        indexPath = [_indexPath copy];
    }
    return self;
}

- (void)download
{
    //NSData *data = [NSData dataWithContentsOfURL:_url];
    ASIHTTPRequest *req = [ASIHTTPRequest requestWithURL:url];
    req.delegate = self;
    req.cachePolicy = ASIOnlyLoadIfNotCachedCachePolicy;
    req.cacheStoragePolicy = ASICachePermanentlyCacheStoragePolicy;
    [req setSecondsToCache:60 * 60 * 24 * 10];
    [req startAsynchronous];
}

- (void)requestFinished:(ASIHTTPRequest *)request
{
    [delegate imageDownloadComplete:indexPath withData:request.responseData];
}

- (void)requestFailed:(ASIHTTPRequest *)request
{
    NSLog(@"request failed for url: %@", [url description]);
}
@end
