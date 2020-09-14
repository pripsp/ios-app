//
//  AppDelegate.h
//  SimpleApp
//
//  Created by Priyal on 2/9/17.
//  Copyright © 2017 Priyal. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) NSMutableArray *aryParentData;
@property (strong, nonatomic) NSMutableArray *aryFoundedChildData;

+(AppDelegate*)sharedDelegate;

@end

