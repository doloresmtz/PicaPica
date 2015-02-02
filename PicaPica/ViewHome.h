//
//  ViewController.h
//  PicaPica
//
//  Created by SantiagoDls on 31/01/15.
//  Copyright (c) 2015 ConstruApps. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewHome : UIViewController< UIAlertViewDelegate>

@property (strong, nonatomic) NSTimer *timer;
@property (strong, nonatomic) IBOutlet UIButton *cmdJugar;
@property (strong, nonatomic) IBOutlet UIButton *cmdPicale;
@property (strong, nonatomic) IBOutlet UILabel *lbJugar;
@property (strong, nonatomic) IBOutlet UILabel *lbPicale;
@property (strong, nonatomic) IBOutlet UILabel *lbClics;
@property (strong, nonatomic) IBOutlet UILabel *lbSegundos;
@property (strong, nonatomic) IBOutlet UITextField *txtJugador;

@end

