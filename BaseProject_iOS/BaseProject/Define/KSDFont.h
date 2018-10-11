//
//  KSDFont.h
//  BaseProject
//
//  Created by 王笛 on 2018/9/14.
//  Copyright © 2018年 王笛. All rights reserved.
//  项目中所有的字体
//

#ifndef KSDFont_h
#define KSDFont_h

#define KSDScaleSize(x) [UIScreen mainScreen].bounds.size.width / 375.0 * (x)

#define KSDSystemFont(size) [UIFont systemFontOfSize:(size)]

#define KSDBoldFont(size) [UIFont boldSystemFontOfSize:(size)]

#define KSDTabBarFont KSDSystemFont(KSDScaleSize(10))

#define KSDTitleFont KSDSystemFont(KSDScaleSize(18))


#endif /* KSDFont_h */
