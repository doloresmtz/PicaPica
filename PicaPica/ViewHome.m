//
//  ViewController.m
//  PicaPica
//
//  Created by SantiagoDls on 31/01/15.
//  Copyright (c) 2015 ConstruApps. All rights reserved.
//

#import "ViewHome.h"
#import "Globals.h"
@interface ViewHome ()

@end

@implementation ViewHome

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)puhs:(id)sender {
    record++;
    self.lbClics.text=[@(record) stringValue];
    NSLog(@"push...");
}

@end
