//
//  EmergencyViewController.h
//  SimpleApp
//
//  Created by Priyal on 3/9/17.
//  Copyright © 2017 Priyal. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EmergencyViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIButton *btncall;
@property (strong, nonatomic) IBOutlet UITextView *txtviewplace;
- (IBAction)btncall:(id)sender;

@end
