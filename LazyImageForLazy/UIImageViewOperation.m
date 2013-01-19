//
//  UIImageViewOperation.m
//  forSeatMap
//
//  Created by porori on 11. 11. 11..
//  Copyright (c) 2011년 __MyCompanyName__. All rights reserved.
//

#import "UIImageViewOperation.h"
#import "ImageOperation.h"

@implementation UIImageView (UIImageOperation)
static NSOperationQueue *__imageQueue = nil;
+ (NSOperationQueue *)_downloadQueue
{
    if(__imageQueue == nil) {
        __imageQueue = [[NSOperationQueue alloc] init];
        [__imageQueue setMaxConcurrentOperationCount:15];
    }
    return __imageQueue;
}
- (id)setImageWithURL:(NSURL *)url
{
    if (self != nil) {
        ImageOperation *operation = [[ImageOperation alloc] initWithURL:url withImageView:self];
        [[UIImageView _downloadQueue] addOperation:operation];
    }
    return self;
}
@end
