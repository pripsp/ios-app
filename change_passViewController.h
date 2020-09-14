//
//  change_passViewController.h
//  SimpleApp
//
//  Created by Priyal on 3/10/17.
//  Copyright © 2017 Priyal. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface change_passViewController : UIViewController<UIAlertViewDelegate>
@property (strong, nonatomic) IBOutlet UIButton *btnchange_pas;
@property (strong, nonatomic) IBOutlet UITextField *txtchangepass,*txtreenterpass;

- (IBAction)btnchange_pas:(UIButton *)sender;
@end
