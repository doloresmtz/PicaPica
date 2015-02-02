//
//  Jugador.h
//  PicaPica
//
//  Created by SantiagoDls on 01/02/15.
//  Copyright (c) 2015 ConstruApps. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Jugador : NSObject
{
    NSString *name;
    NSInteger score;
    NSInteger ranking;
}

@property(nonatomic, retain) NSString *name;
@property (nonatomic) NSInteger score;
@property (nonatomic) NSInteger ranking;

@end