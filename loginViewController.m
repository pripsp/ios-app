//
//  loginViewController.m
//  SimpleApp
//
//  Created by Priyal on 2/25/17.
//  Copyright © 2017 Priyal. All rights reserved.
//

#import "loginViewController.h"
#import "signupViewController.h"
#import "forgotpasswordViewController.h"
#import "SWRevealViewController.h"
#import "tabbarViewController.h"

@interface loginViewController ()

{
    int i;
    NSArray *arrusertype;
   
}
@end

@implementation loginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    i=2;
    [_btnshowpass setTitle:@"◻️" forState:UIControlStateNormal];
    _txtemailorphone.tag = 1;
    _txtpass.tag = 2;
    // Do any additional setup after loading the view.
    [_btnusertype setTitle:@"🔼" forState:UIControlStateNormal];
    arrusertype = [[NSArray alloc]initWithObjects:@"Police",@"Parent", nil];
    _tblusertype.hidden = YES;
    self.navigationController.navigationBarHidden =YES;
//    NSString *GlobalId = [[NSUserDefaults standardUserDefaults]objectForKey:@"GlobalId"];
    
//    if (GlobalId != nil)
//    {
//        UITabBarController *parent = [self.storyboard instantiateViewControllerWithIdentifier:@"tabbarViewController"];
//        
//        [self.navigationController pushViewController:parent animated:YES];
//    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    if (_txtemailorphone.tag == 1)
    {
        NSCharacterSet *email =[[NSCharacterSet characterSetWithCharactersInString:@"abcdefghijklmnopqrstuvwxyz@.1234567890"]invertedSet];
        
        NSString *stremail = [[string componentsSeparatedByCharactersInSet:email]componentsJoinedByString:@""];
        return [string isEqualToString:stremail];
    }
    else
    {
        NSCharacterSet *pass =[[NSCharacterSet characterSetWithCharactersInString:@"((?=.* d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%1234567890])"]invertedSet];
        
        NSString *strpass = [[string componentsSeparatedByCharactersInSet:pass]componentsJoinedByString:@""];
        return [string isEqualToString:strpass];
    }
    
    
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)btnshowpass:(id)sender
{
    if (i%2==0)
    {
        [_btnshowpass setTitle:@"☑️" forState:UIControlStateNormal];
        _txtpass.secureTextEntry = false;
    }
    else
    {
        [_btnshowpass setTitle:@"◻️" forState:UIControlStateNormal];
        _txtpass.secureTextEntry = true;
    }
    i++;
}

- (IBAction)btnlogin:(UIButton *)sender
    {
        if ([_txtusertype.text isEqualToString:@""] || [_txtemailorphone.text isEqualToString:@"" ] || [_txtpass.text isEqualToString: @"" ] )
        {
            
            UIAlertController *alertView = [UIAlertController alertControllerWithTitle:@"Information"message:@"All field Required" preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction *OK = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                
            }];
            [alertView addAction:OK];
            [self presentViewController:alertView animated:YES completion:nil];
        }
        else
        {
            [self login_Check];
        }
        //resdata.hidden = NO;
    
       }
- (IBAction)btnforgottenpass:(UIButton *)sender
{
    forgotpasswordViewController *send= [self.storyboard instantiateViewControllerWithIdentifier:@"forgotpasswordViewController"];
    
    [self.navigationController pushViewController:send animated:YES];
    

}
- (IBAction)btnsignup:(UIButton *)sender
{
    signupViewController *send= [self.storyboard instantiateViewControllerWithIdentifier:@"signupViewController"];
    
    [self.navigationController pushViewController:send animated:YES];
    

}

- (IBAction)btnusertype:(UIButton *)sender
{
    {
        if (i%2 == 0)
        {
            [_btnusertype setTitle:@"🔽" forState:UIControlStateNormal];
            _tblusertype.hidden = NO;
        }
        else
        {
            [_btnusertype setTitle:@"🔼" forState:UIControlStateNormal];
            _tblusertype.hidden = YES;
        }
        i++;
        
    }
}

    
#pragma mark - TableView Method
    
    - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
    {
        
        return arrusertype.count;
        
    }
    - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
    {
        static NSString *identifier = @"cell";
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
        
        
        if (!cell)
        {
            cell =[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        }
        
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        
        
        
        
        cell.textLabel.text = [arrusertype objectAtIndex:indexPath.row];
        return cell;
        
    }
    -(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
    {
        
        _txtusertype.text = arrusertype[indexPath.row];
        _tblusertype.hidden = YES;
        [_btnusertype setTitle:@"🔼" forState:UIControlStateNormal];
        
    }
    
    -(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
    {
        _tblusertype.hidden = YES;
        [_btnusertype setTitle:@"🔼" forState:UIControlStateNormal];
        
    }


-(void)login_Check
{
    NSString *url1 = @"http://localhost/missingchild/login.php?";
    //NSError *error;
    NSString *strurl1 = [NSString stringWithFormat: @"%@email=%@&password=%@&type=%@",url1,_txtemailorphone.text,_txtpass.text, _txtusertype.text];
    
    NSURLSessionConfiguration *defaultConfigObject = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *defaultSession = [NSURLSession sessionWithConfiguration: defaultConfigObject delegate: nil delegateQueue: [NSOperationQueue mainQueue]];
    
    NSURL * url = [NSURL URLWithString:strurl1];
    NSMutableURLRequest * urlRequest = [NSMutableURLRequest requestWithURL:url];
    [urlRequest setHTTPMethod:@"POST"];
    
    NSURLSessionDataTask * dataTask =[defaultSession dataTaskWithRequest:urlRequest
    completionHandler:^(NSData *data, NSURLResponse *respons, NSError *error) {
    //NSLog(@"Response:%@ %@\n", response, error);
    if(error == nil)
    {
        NSString * text = [[NSString alloc] initWithData: data encoding: NSUTF8StringEncoding];
                                                               
        NSData *d1 = [text dataUsingEncoding:NSUTF8StringEncoding allowLossyConversion:YES];
                                                               
        NSMutableDictionary *dict;
        dict = [NSJSONSerialization JSONObjectWithData:d1 options:NSJSONReadingAllowFragments error:&error];
        NSLog(@"arry : %@",dict);
                                                               
        NSString *str = [dict objectForKey:@"Status"];
        
        if ([str isEqualToString:@"true"])
        {
            
            NSString *email = [[[dict objectForKey:@"response"]objectAtIndex:0]valueForKey:@"email"];
            NSString *pass = [[[dict objectForKey:@"response"]objectAtIndex:0]valueForKey:@"password"];
                                                                   
            if ( [_txtusertype.text isEqualToString:@"Police"] && [_txtemailorphone.text isEqualToString:email]
            && [_txtpass.text isEqualToString:pass])
            {
                _globalid = [[[dict objectForKey:@"response"]objectAtIndex:0]valueForKey:@"police_id"];
                                                                               
                NSUserDefaults *defaults = [[NSUserDefaults alloc]init];
                    [defaults setValue:_globalid forKey:@"GlobalId"];
                [[NSUserDefaults standardUserDefaults] synchronize];
                                                                               
                    SWRevealViewController *reveal = [self.storyboard instantiateViewControllerWithIdentifier:@"SWRevealViewController"];
                    [self.navigationController pushViewController:reveal animated:YES];
                                                                           
            }
            else if([_txtusertype.text isEqualToString:@"Parent"] && [_txtemailorphone.text isEqualToString:email]
                && [_txtpass.text isEqualToString:pass])
            {
                _globalid = [[[dict objectForKey:@"response"]objectAtIndex:0]valueForKey:@"parent_id"];
                                                                           
                NSUserDefaults *defaults = [[NSUserDefaults alloc]init];
                [defaults setValue:_globalid forKey:@"GlobalId"];
                [[NSUserDefaults standardUserDefaults] synchronize];
                
                UITabBarController *parent = [self.storyboard instantiateViewControllerWithIdentifier:@"tabbarViewController"];
                
                [self.navigationController pushViewController:parent animated:YES];
            }
        }
        else
        {
            UIAlertController *alertView = [UIAlertController alertControllerWithTitle:@"Information"message:@"Please insert correct information" preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction *OK = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                                                                           
                    }];
            [alertView addAction:OK];
            [self presentViewController:alertView animated:YES completion:nil];
        }
        NSLog(@"Global ID : %@",_globalid);
                                                               
       }
    }];
    [dataTask resume];
}

@end
