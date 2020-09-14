//
//  loginViewController.h
//  SimpleApp
//
//  Created by Priyal on 2/25/17.
//  Copyright © 2017 Priyal. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface loginViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UITextField *txtemailorphone,*txtpass;

@property (strong, nonatomic) IBOutlet UIButton *btnshowpass;

- (IBAction)btnshowpass:(UIButton *)sender;

@property (strong, nonatomic) IBOutlet UILabel *lblshowpass,*lbl__or__;
@property (strong, nonatomic) IBOutlet UIButton *btnlogin;
- (IBAction)btnlogin:(UIButton *)sender;

@property (strong, nonatomic) IBOutlet UIButton *btnforgottenpass;

- (IBAction)btnforgottenpass:(UIButton *)sender;
@property (strong, nonatomic) IBOutlet UIButton *btnsignup;
- (IBAction)btnsignup:(UIButton *)sender;

- (IBAction)btnusertype:(UIButton *)sender;
@property (strong, nonatomic) IBOutlet UITextField *txtusertype;
@property (strong, nonatomic) IBOutlet UITableView *tblusertype;
@property (strong, nonatomic) IBOutlet UIButton *btnusertype;

@property (strong, nonatomic) NSString *globalid;
@end
