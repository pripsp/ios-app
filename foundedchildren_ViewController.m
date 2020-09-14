//
//  foundedchildren_ViewController.m
//  SimpleApp
//
//  Created by Priyal on 3/4/17.
//  Copyright © 2017 Priyal. All rights reserved.
//

#import "foundedchildren_ViewController.h"
#import "SWRevealViewController.h"
#import "AppDelegate.h"

@interface foundedchildren_ViewController ()
{
    NSArray *arrfounded;
}

@end

@implementation foundedchildren_ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _barbtn.target = self.revealViewController;
    _barbtn.action = @selector(revealToggle:);
    
    arrfounded = @[@"",@"",@"",@""];
    
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [AppDelegate sharedDelegate].aryParentData.count;
}

// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if (!cell)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cell"];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"%@ %@ %@",[[[AppDelegate sharedDelegate].aryFoundedChildData objectAtIndex:indexPath.row] valueForKey:@"c_firstname"],[[[AppDelegate sharedDelegate].aryFoundedChildData objectAtIndex:indexPath.row] valueForKey:@"c_nickname"],[[[AppDelegate sharedDelegate].aryFoundedChildData objectAtIndex:indexPath.row] valueForKey:@"c_lastname"]];
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%@ %@ %@ %@ %@",[[[AppDelegate sharedDelegate].aryFoundedChildData objectAtIndex:indexPath.row] valueForKey:@"c_apt"],[[[AppDelegate sharedDelegate].aryFoundedChildData objectAtIndex:indexPath.row] valueForKey:@"c_streetname"],[[[AppDelegate sharedDelegate].aryFoundedChildData objectAtIndex:indexPath.row] valueForKey:@"c_cityname"],[[[AppDelegate sharedDelegate].aryFoundedChildData objectAtIndex:indexPath.row] valueForKey:@"c_state"],[[[AppDelegate sharedDelegate].aryFoundedChildData objectAtIndex:indexPath.row] valueForKey:@"c_zipcode"]];
    return cell;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
