//
//  chooseimageViewController.h
//  SimpleApp
//
//  Created by Priyal on 3/11/17.
//  Copyright © 2017 Priyal. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface chooseimageViewController : UIViewController<UIImagePickerControllerDelegate,UINavigationControllerDelegate>
@property (strong, nonatomic) IBOutlet UIImageView *photo;

- (IBAction)btnchoosephoto:(UIButton *)sender;
@property (strong, nonatomic) IBOutlet UIButton *btnchooseimg,*btndeleteimg;
- (IBAction)btndeleteimg:(UIButton *)sender;
@end
