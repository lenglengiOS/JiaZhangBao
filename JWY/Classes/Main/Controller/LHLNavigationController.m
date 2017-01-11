//
//  LHLNavigationController.m
//  JWY
//
//  Created by 冷洪林 on 2016/12/28.
//  Copyright © 2016年 冷洪林. All rights reserved.
//

#import "LHLNavigationController.h"
#import "UIColor+LHLUtilites.h"
#import "UIImage+image.h"

@interface LHLNavigationController ()

@end

@implementation LHLNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 设置导航栏背景颜色
    self.navigationBar.tintColor = [UIColor whiteColor];
    self.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName: [UIColor whiteColor]};
    self.navigationBar.barTintColor = [UIColor colorWithRed:0.20 green:0.73 blue:0.67 alpha:1.00];
    self.navigationBar.translucent = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// 设置状态栏颜色
- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

- (void)setTabBarItemImage:(NSString *)image selectImage:(NSString *)selectImage title:(NSString *)title
{
    self.tabBarItem.image = [UIImage imageOriginalWithName:image];
    self.tabBarItem.selectedImage = [UIImage imageOriginalWithName:selectImage];
    self.title = title;
    [self.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor colorWithRed:0.20 green:0.73 blue:0.67 alpha:1.00]} forState:UIControlStateSelected];
}

@end
