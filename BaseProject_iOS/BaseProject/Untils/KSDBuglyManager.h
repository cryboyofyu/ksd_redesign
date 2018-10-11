//
//  KSDBuglyManager.h
//  BaseProject
//
//  Created by 王笛 on 2018/10/10.
//  Copyright © 2018 王笛. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface KSDBuglyManager : NSObject

+ (void)configBugly;

+(void)reportErrorName:(NSString *)errorName errorReason:(NSString *)errorReason callStack:(NSArray *)aStackArray extraInfo:(NSDictionary *)info;

@end

NS_ASSUME_NONNULL_END
