//
//  ViewList.h
//  PicaPica
//
//  Created by SantiagoDls on 01/02/15.
//  Copyright (c) 2015 ConstruApps. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Globals.h"

@interface ViewList :UIViewController<UITableViewDelegate, UITableViewDataSource, UIAlertViewDelegate>
@property (strong, nonatomic) IBOutlet UITableView *tblMain;

@end
