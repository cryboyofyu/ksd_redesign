//
//  KSDConfig.h
//  BaseProject
//
//  Created by 王笛 on 2018/9/14.
//  Copyright © 2018年 王笛. All rights reserved.
//  项目的配置
//

#ifndef KSDConfig_h
#define KSDConfig_h

#import "KSDColors.h"
#import "KSDFont.h"
#import "KSDApi.h"
#import "KSDDelegate.h"
#import "KSDRules.h"
#import "KSDThirdPort.h"

#if APPTYPE == 0//dev
#define KSDLog(...) NSLog(__VA_ARGS__)

static const NSString *buglyAppID = @"6993e308eb";

#elif APPTYPE == 1//test
#define KSDLog(...) NSLog(__VA_ARGS__)

static const NSString *buglyAppID = @"043432ee44";

#elif APPTYPE == 2//release
#define KSDLog(...)

static const NSString *buglyAppID = @"aa83668b70";

#else
#endif

#define KSDSCREENWIDTH [UIScreen mainScreen].bounds.size.width
#define KSDSCREENHEIGHT [UIScreen mainScreen].bounds.size.height

#define Bugly_ErrorName_AvoidCrash @"AvoidCrash拦截的异常"

#endif /* KSDConfig_h */
