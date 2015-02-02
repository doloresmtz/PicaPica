//
//  ViewList.m
//  PicaPica
//
//  Created by SantiagoDls on 01/02/15.
//  Copyright (c) 2015 ConstruApps. All rights reserved.
//

#import "ViewList.h"
#import "cellRanking.h"
#import "Jugador.h"

@interface ViewList ()

@end

@implementation ViewList

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

/**********************************************************************************************
 Table Functions
 **********************************************************************************************/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSLog(@"%d",jugadorArrayOrd.count);
    return jugadorArrayOrd.count;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 47;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
   
    NSLog(@"cellRanking");
    static NSString *CellIdentifier = @"cellRanking";
    
    cellRanking *cell = (cellRanking *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
   
    if (cell == nil)
    {
        cell = [[cellRanking alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    Jugador *jug = [jugadorArrayOrd objectAtIndex:indexPath.row];
    NSLog(@"%@",jug.name);
    
    cell.lbRanking.text=[@(jug.ranking) stringValue];
    cell.lbJugador.text=jug.name;
    cell.lbClics.text=[@(jug.score) stringValue];

    return cell;
}

//-------------------------------------------------------------------------------

@end
