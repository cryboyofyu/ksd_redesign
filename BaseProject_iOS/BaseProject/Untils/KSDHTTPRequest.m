//
//  KSDHTTPRequest.m
//  BaseProject
//
//  Created by 王笛 on 2018/9/14.
//  Copyright © 2018年 王笛. All rights reserved.
//

#import "KSDHTTPRequest.h"
#import <AFNetworking.h>

@implementation KSDHTTPRequest


+ (void)GETRequestWithURLStr:(nonnull NSString *)urlStr parameters:(nullable id)parameters success:(nullable void(^)(id _Nullable data))success failed:(nullable void (^)(NSError * _Nullable error))failed
{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"text/plain",@"text/json",@"application/json",@"text/javascript",@"text/html", @"application/javascript", @"text/js", @"application/x-javascript", nil];
    
    //中文字符串转码
    urlStr = [urlStr stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet characterSetWithCharactersInString:urlStr]];

    [manager GET:urlStr parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {

        //TODO:请求成功的回调
        //success(responseObject);

    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {

        //TODO:失败的回调
        //failed(error);

    }];
}

+ (void)POSTRequestWithURLStr:(nonnull NSString *)urlStr parameters:(nullable id)parameters success:(nullable void(^)(id _Nullable data))success failed:(nullable void (^)(NSError * _Nullable error))failed
{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"text/plain",@"text/json",@"application/json",@"text/javascript",@"text/html", @"application/javascript", @"text/js", @"application/x-javascript", nil];
    //中文字符串转码
    urlStr = [urlStr stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet characterSetWithCharactersInString:urlStr]];

    [manager POST:urlStr parameters:parameters constructingBodyWithBlock:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {

        //TODO:请求成功的回调
        //success(responseObject);

    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {

        //TODO:失败的回调
        //failed(error);

    }];
}



@end
