//
//  forgotpasswordViewController.h
//  SimpleApp
//
//  Created by Priyal on 2/25/17.
//  Copyright © 2017 Priyal. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface forgotpasswordViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextView *textviewforphoneandemail;
@property (strong, nonatomic) IBOutlet UITextField *txtphoneoremail;
@property (strong, nonatomic) IBOutlet UIButton *btncontinueforgotpass;
- (IBAction)btncontinueforgotpass:(UIButton *)sender;

@end
