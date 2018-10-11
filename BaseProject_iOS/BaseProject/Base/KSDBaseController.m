//
//  KSDBaseController.m
//  BaseProject
//
//  Created by 王笛 on 2018/9/14.
//  Copyright © 2018年 王笛. All rights reserved.
//

#import "KSDBaseController.h"

@interface KSDBaseController ()

@end

@implementation KSDBaseController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = KSDBGColor;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
    // Add code to clean up any of your own resources that are no longer necessary.
    
    // 此处做兼容处理需要加上ios6.0的宏开关，保证是在6.0下使用的,6.0以前屏蔽以下代码，否则会在下面使用self.view时自动加载viewDidUnLoad
    
    if ([[UIDevice currentDevice].systemVersion floatValue] >= 6.0) {
        
        // 需要注意的是self.isViewLoaded是必不可少的，其他方式访问视图会导致它加载 ，在WWDC视频也忽视这一点。
        
        if (self.isViewLoaded && !self.view.window)// 是否是正在使用的视图
            
        {
            
            // Add code to preserve data stored in the views that might be needed later.
            
            // Add code to clean up other strong references to the view in the view hierarchy.
            
            self.view = nil;// 目的是再次进入时能够重新加载调用viewDidLoad函数。
            
        }
        
    }
    
}

@end
