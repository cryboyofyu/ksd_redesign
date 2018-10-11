//
//  KSDBuglyManager.m
//  BaseProject
//
//  Created by 王笛 on 2018/10/10.
//  Copyright © 2018 王笛. All rights reserved.
//

#import "KSDBuglyManager.h"
#import <Bugly/Bugly.h>

@implementation KSDBuglyManager

+ (void)configBugly
{
    BuglyConfig *config = [[BuglyConfig alloc] init];
    config.reportLogLevel = BuglyLogLevelWarn;
    [Bugly startWithAppId:[NSString stringWithFormat:@"%@", buglyAppID] config:config];
}

+ (void)reportErrorName:(NSString *)errorName errorReason:(NSString *)errorReason callStack:(NSArray *)aStackArray extraInfo:(NSDictionary *)info
{
    [Bugly reportExceptionWithCategory:3 name:errorName reason:errorReason callStack:aStackArray extraInfo:info terminateApp:NO];
}

@end
