//
//  UIImage+image.h
//  JWY
//
//  Created by 冷洪林 on 2016/12/29.
//  Copyright © 2016年 冷洪林. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (image)
// 生成未渲染的图片
+ (UIImage *)imageOriginalWithName:(NSString *)imageName;
// 裁剪成圆形图片(对象方法)
- (instancetype)lhl_circleImage;
// 裁剪成圆形图片(类方法)
+ (instancetype)lhl_circleImageNamed:(NSString *)name;
// 根据颜色生成图片
+ (UIImage *)lhl_imageWithColor:(UIColor *)color;
// 根据图片名称拉伸聊天图片
+ (UIImage *)lhl_resizingWithImaName:(NSString *)iconName;
// 根据图片拉伸聊天图片
+ (UIImage *)lhl_resizingWithIma:(UIImage *)ima;
@end
