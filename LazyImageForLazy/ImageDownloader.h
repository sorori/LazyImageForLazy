//
//  ImageDownloader.h
//  LazyImageForLazy
//
//  Created by porori on 13. 1. 20..
//  Copyright (c) 2013년 porori. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ASIHTTPRequest.h"

@protocol ImageDownloaderDelegate <NSObject>

- (void)imageDownloadComplete:(NSIndexPath *)_indexPath withData:(NSData *)_data;

@end

@interface ImageDownloader : NSObject <ASIHTTPRequestDelegate>
{
    NSURL *url;
    NSIndexPath *indexPath;
}

@property (weak) id<ImageDownloaderDelegate> delegate;

- (id)initWithURL:(NSURL *)_url indexPath:(NSIndexPath *)_indexPath;
- (void)download;

@end
