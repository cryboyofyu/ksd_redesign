//
//  AppDelegate+ViewController.m
//  BaseProject
//
//  Created by 王笛 on 2018/9/14.
//  Copyright © 2018年 王笛. All rights reserved.
//

#import "AppDelegate+ViewController.h"
#import "KSDTabBarController.h"
#import "KSDNavigationController.h"
#import "KSDLoginController.h"

@implementation AppDelegate (ViewController)

- (void)setUpViewController
{
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    KSDLoginController *loginVC = [[KSDLoginController alloc] init];
    KSDNavigationController *loginNavC = [[KSDNavigationController alloc] initWithRootViewController:loginVC];
    self.window.rootViewController = loginNavC;
    
    [self.window makeKeyAndVisible];
    
    
    
//    KSDTabBarController *tabBarController = [[KSDTabBarController alloc] init];
//    self.window.rootViewController = tabBarController;
//    
//    [self.window makeKeyAndVisible];
}

@end
