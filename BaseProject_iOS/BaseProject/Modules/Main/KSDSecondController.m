//
//  KSDSecondController.m
//  基础项目Dev
//
//  Created by 王笛 on 2018/9/17.
//  Copyright © 2018年 王笛. All rights reserved.
//

#import "KSDSecondController.h"

@interface KSDSecondController ()

@end

@implementation KSDSecondController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //崩溃测试
//    id testObject = [[NSString alloc] init];
//    NSInteger count = [testObject count];
//    KSDLog(@"%ld", count);
//
//
//    [self testNSArrayCrash];
//
//    [self testNSDictionryCrash];
    
}

- (void)testNSArrayCrash
{
    NSArray *arr = @[@"1", @"2"];
    NSString *test = arr[5];

    NSMutableArray *mutableArr = [NSMutableArray arrayWithArray:arr];
    [mutableArr addObject:test];
}

- (void)testNSDictionryCrash
{
    NSString *testStr;
    NSDictionary *dict = @{@"name":@"zhangsan",
                           @"age":@"23",
                           @"sex":testStr
                           };
    NSString *sex = dict[@"sex"];
    KSDLog(@"%@", sex);
}



@end
