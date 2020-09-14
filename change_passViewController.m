//
//  change_passViewController.m
//  SimpleApp
//
//  Created by Priyal on 3/10/17.
//  Copyright © 2017 Priyal. All rights reserved.
//

#import "change_passViewController.h"



@interface change_passViewController ()

@end

@implementation change_passViewController

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

- (IBAction)btnchange_pas:(UIButton *)sender
{
    NSString *msg = @"Your password has been changed successfully! \n Thank you.";
    UIAlertController *alertview = [UIAlertController alertControllerWithTitle:@"Saved!" message:msg preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *action = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
    [alertview addAction:action];
    [self presentViewController:alertview animated:YES completion:nil];
    

}
@end
