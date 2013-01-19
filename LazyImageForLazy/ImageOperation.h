//
//  ImageOperation.h
//  forSeatMap
//
//  Created by porori on 11. 11. 11..
//  Copyright (c) 2011년 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ImageOperation : NSOperation {
    NSURL *_url;
    UIImageView *_imageView;
}

- (id)initWithURL:(NSURL *)url withImageView:(UIImageView *)imageView;

@end
