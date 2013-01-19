//
//  ImageOperation.m
//  forSeatMap
//
//  Created by porori on 11. 11. 11..
//  Copyright (c) 2011년 __MyCompanyName__. All rights reserved.
//

#import "ImageOperation.h"
#import "ASIHTTPRequest.h"

@implementation ImageOperation

- (id)initWithURL:(NSURL *)url withImageView:(UIImageView *)imageView
{
    self = [super init];
    if (self != nil) {
        _url = url;
        _imageView = imageView;
    }
    return self;
}

- (void)main
{
    //NSData *data = [NSData dataWithContentsOfURL:_url];
    ASIHTTPRequest *req = [ASIHTTPRequest requestWithURL:_url];
    req.cachePolicy=ASIOnlyLoadIfNotCachedCachePolicy;
    req.cacheStoragePolicy=ASICachePermanentlyCacheStoragePolicy;
    [req setSecondsToCache:60*60*24*10];
    [req startSynchronous];
    NSData *data = [req responseData];
    UIImage *image = [UIImage imageWithData:data];
    
    [self performSelectorOnMainThread:@selector(_setImage:) withObject:image waitUntilDone:YES];
}

- (void)_setImage:(UIImage *)image
{
    if(image == nil) {
        NSLog(@"Oops! image is nil");
    } else {
        _imageView.image = image;
        [_imageView setNeedsDisplay];
    }
}

- (void)dealloc
{
    
}
@end
