//
//  UIColor+LHLUtilites.h
//  JWY
//
//  Created by 冷洪林 on 2016/12/29.
//  Copyright © 2016年 冷洪林. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (LHLUtilites)

+ (UIColor *)colorWithRed:(int)r green:(int)g blue:(int)b;
+ (UIColor *)colorWithRed:(int)r green:(int)g blue:(int)b a:(CGFloat)a;
+ (UIColor *)colorWithString:(NSString *)stringToConvert;

@end
