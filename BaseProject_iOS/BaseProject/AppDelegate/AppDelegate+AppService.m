//
//  AppDelegate+AppService.m
//  BaseProject
//
//  Created by 王笛 on 2018/9/14.
//  Copyright © 2018年 王笛. All rights reserved.
//

#import "AppDelegate+AppService.h"
#import <AvoidCrash.h>
#import "KSDBuglyManager.h"

@implementation AppDelegate (AppService)

- (void)setUpAvoidCrash
{
    [AvoidCrash makeAllEffective];
    
    NSArray *noneSelCalssStrings = @[@"NSString", @"NSArray", @"NSDictionary", @"NSNull",
                                     @"NSNumber"];
    [AvoidCrash setupNoneSelClassStringsArr:noneSelCalssStrings];
    
    NSArray *noneSelClassPrefix = @[@"KSD"];
    [AvoidCrash setupNoneSelClassStringPrefixsArr:noneSelClassPrefix];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(dealwithCrashMessage:) name:AvoidCrashNotification object:nil];
}

- (void)setUpBugly
{
    [KSDBuglyManager configBugly];
}

- (void)setUpIQKeyboardManager
{
    
}

- (void)dealwithCrashMessage:(NSNotification *)note
{
    NSDictionary *info = note.userInfo;
    NSString *errorReason = [NSString stringWithFormat:@"【ErrorReason】%@========【ErrorPlace】%@========【DefaultToDo】%@========【ErrorName】%@", info[@"errorReason"], info[@"errorPlace"], info[@"defaultToDo"], info[@"errorName"]];
    NSArray *callStack = info[@"callStackSymbols"];
    
    [KSDBuglyManager reportErrorName:Bugly_ErrorName_AvoidCrash errorReason:errorReason callStack:callStack extraInfo:[NSDictionary dictionary]];
}

@end
