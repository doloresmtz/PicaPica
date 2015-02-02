//
//  ViewRanking.m
//  PicaPica
//
//  Created by SantiagoDls on 31/01/15.
//  Copyright (c) 2015 ConstruApps. All rights reserved.
//

#import "ViewRanking.h"
#import "Globals.h"
#import "Jugador.h"



@interface ViewRanking ()

@end

@implementation ViewRanking

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //Obtener la fecha
    NSDate *today = [NSDate date];
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"dd/MM/yyyy"];
    NSString *dateString = [dateFormat stringFromDate:today];
    
    //Obtener la hora
    
    NSDate *currentTime = [NSDate date];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"hh:mm"];
    NSString *horaString = [dateFormatter stringFromDate: currentTime];
    
    
    self.lbJugador.text=jugador;
    self.lbClics.text=[@(record) stringValue];
    self.lbFecha.text = dateString;
    self.lbHora.text=horaString;
    
    [self ordenarRanking];
    //Mostramos el rankin
    int rank=[self getRankin:self.lbJugador.text];
    self.lbRanking.text=[@(rank) stringValue];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)ordenarRanking {
    //Se ordena ascendente
    NSSortDescriptor *sort = [NSSortDescriptor sortDescriptorWithKey:@"score" ascending:YES];
    [jugadorArray sortUsingDescriptors:[NSArray arrayWithObject:sort]];
    
    //Se copia a un arreglo de forma descentente
    NSString *res;
    int c=0;
    for (int i = jugadorArray.count-1 ; i>=0; i--) {
        Jugador *jug = [jugadorArray objectAtIndex:i];
        jug.ranking=c+1;
        [jugadorArrayOrd addObject:jug];
        c++;
        res=@"";
        res = [NSString stringWithFormat:@"%@ %d %d", jug.name, jug.score,jug.ranking];
        NSLog(@"%@",res);
    }
}

- (int)getRankin:(NSString *)name {
    int rank=0;
    //NSLog(@"%@ %@",@"Buscar:",name);
    //Buscamos la puntuacion del jugador
    for (int i = 0 ; i < jugadorArray.count; i++) {
        Jugador *jug = [jugadorArray objectAtIndex:i];
        if([jug.name isEqualToString:name]){
            //NSLog(@"%@",[@(jug.score) stringValue]);
            //NSLog(@"%ld",(long)jug.score);
            //NSLog(@"%d",(int)jug.score);
            //NSLog(@"%@ %d %d", jug.name, jug.score, jug.ranking);
            rank=jug.ranking;
            i=jugadorArray.count;
        }
    }
    return rank;
}

- (IBAction)back:(id)sender {
    segs=0;
    record=0;
    [self performSegueWithIdentifier:@"SegueToHome" sender:self];
}

- (IBAction)ranking:(id)sender {
}

@end
