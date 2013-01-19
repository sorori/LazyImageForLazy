//
//  ArrayRetainDataSource.h
//  LazyImageForLazy
//
//  Created by porori on 13. 1. 20..
//  Copyright (c) 2013년 porori. All rights reserved.
//

#import "TitledTableViewDataSource.h"
#import "TblData.h"
#import "ImageDownloader.h"

@interface ArrayRetainDataSource : TitledTableViewDataSource <ImageDownloaderDelegate>
{
    NSMutableDictionary *imageRepository;
    NSMutableDictionary *imageDownloaders;
}

@end
