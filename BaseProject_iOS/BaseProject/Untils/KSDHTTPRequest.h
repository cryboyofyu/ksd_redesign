//
//  KSDHTTPRequest.h
//  BaseProject
//
//  Created by 王笛 on 2018/9/14.
//  Copyright © 2018年 王笛. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface KSDHTTPRequest : NSObject

/**
 get网络请求

 @param urlStr             URL字符串
 @param parameters         请求参数
 @param success            请求成功回调
 @param failed             请求失败回调
 */
+(void)GETRequestWithURLStr:(NSString *)urlStr parameters:(nullable id)parameters success:(nullable void(^)(id _Nullable data))success failed:(nullable void (^)(NSError * error))failed;

/**
 post网络请求

 @param urlStr             URL字符串
 @param parameters         请求参数
 @param success            请求成功回调
 @param failed             请求失败回调
 */
+ (void)POSTRequestWithURLStr:(NSString *)urlStr parameters:(nullable id)parameters success:(nullable void(^)(id _Nullable data))success failed:(nullable void (^)(NSError * error))failed;


@end

NS_ASSUME_NONNULL_END
