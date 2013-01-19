//
//  FirstViewController.h
//  LazyImageForLazy
//
//  Created by porori on 13. 1. 19..
//  Copyright (c) 2013년 porori. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TitledTableViewDataSource.h"

@interface FirstViewController : UIViewController
{

}
@property (weak, nonatomic) IBOutlet UITableView *tblView;
@property (strong) TitledTableViewDataSource *tblViewDataSource;

@end
