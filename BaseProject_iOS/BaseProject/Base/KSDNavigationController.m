//
//  KSDNavigationController.m
//  BaseProject
//
//  Created by 王笛 on 2018/9/14.
//  Copyright © 2018年 王笛. All rights reserved.
//

#import "KSDNavigationController.h"

@interface KSDNavigationController ()<UIGestureRecognizerDelegate, UINavigationControllerDelegate>

@end

@implementation KSDNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //设置手势代理，导航控制器的代理
    __weak KSDNavigationController *weakSelf = self;
    if ([self respondsToSelector:@selector(interactivePopGestureRecognizer)]) {
        self.interactivePopGestureRecognizer.delegate = weakSelf;
        self.delegate = weakSelf;
    }
}

- (UIViewController *)popViewControllerAnimated:(BOOL)animated
{
    return [super popViewControllerAnimated:animated];
}

#pragma -UINavigationControllerDelegate//转场时禁用手势识别，加载完成后再启用
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if ([self respondsToSelector:@selector(interactivePopGestureRecognizer)]) {
        self.interactivePopGestureRecognizer.enabled = NO;
    }
    
    //设置返回按钮
    if (self.viewControllers.count > 0) {
        [self.navigationController.navigationBar setBackIndicatorImage:[[UIImage imageNamed:@"navibar_back_btn_bg_normal"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
        [self.navigationController.navigationBar setBackIndicatorTransitionMaskImage:[[UIImage imageNamed:@"navibar_back_btn_bg_normal"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
        UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];
        self.navigationItem.backBarButtonItem = backItem;
        viewController.navigationItem.leftBarButtonItem = self.navigationItem.backBarButtonItem;
    }
    
    [super pushViewController:viewController animated:animated];
}

- (void)navigationController:(UINavigationController *)navigationController didShowViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if ([self respondsToSelector:@selector(interactivePopGestureRecognizer)]) {
        self.interactivePopGestureRecognizer.enabled = YES;
    }
}


- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer
{
    if (self.childViewControllers.count == 1) {
        return NO;
    }
    return YES;
}

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer
{
    return YES;
}

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldBeRequiredToFailByGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer
{
    return [gestureRecognizer isKindOfClass:UIScreenEdgePanGestureRecognizer.class];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

@end
