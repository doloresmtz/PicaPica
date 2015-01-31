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
    // Do any additional setup after loading the view,
    [self startTimer];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)startTimer {
    self.timer = [NSTimer scheduledTimerWithTimeInterval:1.0f
                                                  target:self
                                                selector:@selector(counter:)
                                                userInfo:nil
                                                 repeats:YES];
}

- (void)counter:(NSTimer *)timer {
    segs++;
    self.lbSegs.text=[@(segs) stringValue];
    NSLog(@"segs...");
}

- (IBAction)puhs:(id)sender {
    record++;
    self.lbClics.text=[@(record) stringValue];
    NSLog(@"push...");
}


@end
