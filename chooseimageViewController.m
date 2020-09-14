//
//  chooseimageViewController.m
//  SimpleApp
//
//  Created by Priyal on 3/11/17.
//  Copyright © 2017 Priyal. All rights reserved.
//

#import "chooseimageViewController.h"

@interface chooseimageViewController ()
{
    UIImagePickerController *picker;
}

@end

@implementation chooseimageViewController

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
-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info
{
    
    UIImage *img = info[UIImagePickerControllerOriginalImage];
    _photo.image = img;
    _photo.contentMode = UIViewContentModeScaleToFill;
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)btnchoosephoto:(UIButton *)sender
{
    picker = [[UIImagePickerController alloc]init];
    picker.delegate = self;
    picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    [self presentViewController:picker animated:YES completion:nil];
}
- (IBAction)btndeleteimg:(UIButton *)sender
{
    UIImage *img = [UIImage imageNamed:@""];
    _photo.image = img;

}
@end
