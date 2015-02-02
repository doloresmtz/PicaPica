//
//  ViewController.m
//  PicaPica
//
//  Created by SantiagoDls on 31/01/15.
//  Copyright (c) 2015 ConstruApps. All rights reserved.
//

#import "ViewHome.h"
#import "Globals.h"

UIAlertView     *alert;
@interface ViewHome ()

@end

@implementation ViewHome


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view,
    self.lbPicale.hidden=true;
    self.cmdPicale.hidden=true;
    
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
    self.lbSegundos.text=[@(segs) stringValue];
    if( segs>9) {
       NSLog(@"Tiempo terminado...");
        [self.timer invalidate];
        self.timer = nil;
        self.cmdPicale.enabled=false;
        
        
        [self.cmdPicale setTitle:@"Tiempo agotado..." forState:UIControlStateNormal];
        [self performSegueWithIdentifier:@"SegueToRanking" sender:self];

    }
}

- (IBAction)puhs:(id)sender {
    record++;
    self.lbClics.text=[@(record) stringValue];
    NSLog(@"push...");
}
- (IBAction)jugar:(id)sender {
    if ([self.txtJugador.text isEqual:@""]){
        NSLog(@"No name");
        alert = [[UIAlertView alloc] initWithTitle:@"PicaPica"
                                           message:@"Escriba el nombre del jugador!"
                                          delegate:self
                                 cancelButtonTitle:@"Aceptar"
                                 otherButtonTitles:nil, nil, nil];
        [alert show];

    }
    else{
        jugador=self.txtJugador.text;
        self.txtJugador.enabled=false;
     [self startTimer];
     self.lbJugar.hidden=true;
     self.cmdJugar.hidden=true;
     self.lbPicale.hidden=false;
     self.cmdPicale.hidden=false;
   
    }
}


@end
