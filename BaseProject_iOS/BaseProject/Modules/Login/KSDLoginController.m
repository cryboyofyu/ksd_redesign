//
//  KSDLoginController.m
//  BaseProject
//
//  Created by 王笛 on 2018/9/17.
//  Copyright © 2018年 王笛. All rights reserved.
//

#import "KSDLoginController.h"
#import "KSDTabBarController.h"

@interface KSDLoginController ()

@end

@implementation KSDLoginController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:YES animated:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    [self.navigationController setNavigationBarHidden:NO animated:animated];
}

- (IBAction)loginBtnClick {
    
    KSDTabBarController *tabBarVC = [[KSDTabBarController alloc] init];
    [[UIApplication sharedApplication].keyWindow setRootViewController:tabBarVC];
}


@end
