//
//  AppDelegate+AppService.h
//  BaseProject
//
//  Created by 王笛 on 2018/9/14.
//  Copyright © 2018年 王笛. All rights reserved.
//

#import "AppDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@interface AppDelegate (AppService)

/** 启动AvoidCrash */
- (void)setUpAvoidCrash;

/** 启动bugly */
- (void)setUpBugly;

/** 启动全局的IQKeyBoard */
- (void)setUpIQKeyboardManager;

@end

NS_ASSUME_NONNULL_END
