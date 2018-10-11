//
//  KSDColors.h
//  BaseProject
//
//  Created by 王笛 on 2018/9/14.
//  Copyright © 2018年 王笛. All rights reserved.
//  项目中所用到的颜色
//

#ifndef KSDColors_h
#define KSDColors_h

#define KSDColorRGB(s) [UIColor colorWithRed:(((s & 0xFF0000) >> 16))/255.0 green:(((s & 0xFF00) >>8)/255.0) blue:((s &0xFF)/255.0) alpha:1.0]

#define KSDColorRGBAlpha(s,a) [UIColor colorWithRed:(((s & 0xFF0000) >> 16))/255.0 green:(((s & 0xFF00) >>8)/255.0) blue:((s &0xFF)/255.0) alpha:(a)]

#define KSDBGColor KSDColorRGB(0xffffff)

#define KSDTabNorColor KSDColorRGB(0xA4AAB3)

#define KSDTabSelColor KSDColorRGB(0xFF7C7B)


#endif /* KSDColors_h */
