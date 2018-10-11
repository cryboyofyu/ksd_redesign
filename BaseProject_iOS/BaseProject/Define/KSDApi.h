//
//  KSDApi.h
//  BaseProject
//
//  Created by 王笛 on 2018/9/14.
//  Copyright © 2018年 王笛. All rights reserved.
//  项目中用到的接口
//

#ifndef KSDApi_h
#define KSDApi_h

#if APPTYPE == 0//dev
#define KSDURLPrefix @"https://baidu.com/"

#elif APPTYPE == 1//test
#define KSDURLPrefix @"https://qq.com/"

#elif APPTYPE == 2//release
#define KSDURLPrefix @"http://wechat.com/"

#else
#endif

#endif /* KSDApi_h */
