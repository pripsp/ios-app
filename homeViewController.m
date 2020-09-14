//
//  homeViewController.m
//  SimpleApp
//
//  Created by Priyal on 2/9/17.
//  Copyright © 2017 Priyal. All rights reserved.
//

#import "homeViewController.h"
#import "Submit_DetailsViewController.h"

@interface homeViewController ()

@end

@implementation homeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    }

-(void)viewWillAppear:(BOOL)animated
{
    self.navigationController.navigationBarHidden = YES;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)btn_fill_Details:(UIButton *)sender
{
    
//    
//   Submit_DetailsViewController * submit = [self.storyboard instantiateViewControllerWithIdentifier:@"Submit_DetailsViewController"];
//  
//   [self.navigationController pushViewController:submit animated:YES];
}


@end
