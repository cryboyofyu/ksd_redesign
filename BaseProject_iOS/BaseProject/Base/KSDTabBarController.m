//
//  KSDTabBarController.m
//  BaseProject
//
//  Created by 王笛 on 2018/9/14.
//  Copyright © 2018年 王笛. All rights reserved.
//

#import "KSDTabBarController.h"
#import "KSDNavigationController.h"
#import "KSDMainController.h"
#import "KSDMySelfController.h"

@interface KSDTabBarController ()

@end

@implementation KSDTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self loadTabBarVC];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

#pragma mark - buttonClick

#pragma mark - LoadUI
- (void)loadTabBarVC
{
    // 主页
    KSDMainController *mainVC = [[KSDMainController alloc] init];
    KSDNavigationController *mainNavC = [[KSDNavigationController alloc] initWithRootViewController:mainVC];
    mainVC.tabBarItem = [self setTabBarItemWithTitle:@"主页" titleSize:KSDScaleSize(10) titleFontName:@"PingFangSC-Regular" selectedImage:@"icon_foot_Customer_press" normalImage:@"icon_foot_Customer_normal" selectTitleColor:KSDTabSelColor normalTitleColor:KSDTabNorColor];
    
    // 我的
    KSDMySelfController *mySelfVC = [[KSDMySelfController alloc] init];
    KSDNavigationController *mySelfNavC = [[KSDNavigationController alloc] initWithRootViewController:mySelfVC];
    mySelfVC.tabBarItem = [self setTabBarItemWithTitle:@"我的" titleSize:KSDScaleSize(10) titleFontName:@"PingFangSC-Regular" selectedImage:@"icon_foot_mine_press" normalImage:@"icon_foot_mine_normal" selectTitleColor:KSDTabSelColor normalTitleColor:KSDTabNorColor];
    
    self.viewControllers = @[mainNavC, mySelfNavC];
    
}

- (UITabBarItem *)setTabBarItemWithTitle:(NSString *)title titleSize:(CGFloat)titleSize titleFontName:(NSString *)titleFontName selectedImage:(NSString *)selectedImage normalImage:(NSString *)normalImage selectTitleColor:(UIColor *)selectTitleColor normalTitleColor:(UIColor *)normalTitleColor
{
    UITabBarItem *tabBarItem = [[UITabBarItem alloc] initWithTitle:title image:[[UIImage imageNamed:normalImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selectedImage:[[UIImage imageNamed:selectedImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:normalTitleColor, NSFontAttributeName:[UIFont fontWithName:titleFontName size:titleSize]} forState:UIControlStateNormal];
    
    [[UITabBarItem appearance] setTitleTextAttributes: @{NSForegroundColorAttributeName:selectTitleColor, NSFontAttributeName:[UIFont fontWithName:titleFontName size:titleSize]} forState:UIControlStateSelected];
    return tabBarItem;
}

#pragma mark - delegate

#pragma mark - lazyLoading

@end
