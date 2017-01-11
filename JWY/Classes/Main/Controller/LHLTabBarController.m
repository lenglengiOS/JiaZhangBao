//
//  LHLTabBarController.m
//  JWY
//
//  Created by 冷洪林 on 2016/12/27.
//  Copyright © 2016年 冷洪林. All rights reserved.
//

#import "LHLTabBarController.h"
#import "LHLHomeController.h"
#import "LHLParentsController.h"
#import "LHLClassController.h"
#import "LHLMeController.h"
#import "LHLNavigationController.h"

@interface LHLTabBarController ()

@end

@implementation LHLTabBarController

+ (void)load {
    // 设置某各类中的 UITabBarItem 按钮的颜色
    UITabBarItem *item = [UITabBarItem appearance];
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSForegroundColorAttributeName] = [UIColor colorWithRed:0.00 green:0.72 blue:0.65 alpha:1.00];
    [item setTitleTextAttributes:attrs forState:UIControlStateSelected];
    
    // 设置字体的尺寸:只有正常状态下设置才有效果
    NSMutableDictionary *attrsNor = [NSMutableDictionary dictionary];
    attrsNor[NSFontAttributeName] = [UIFont systemFontOfSize:11];
    [item setTitleTextAttributes:attrsNor forState:UIControlStateNormal];
}

- (BOOL)prefersStatusBarHidden { //设置隐藏显示
    
    return NO;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // 创建tabBar子界面
    [self createTabBar];
    
    // 设置tabBar图片
    [self setuUpTabBarImage];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)createTabBar {
    LHLHomeController *homeVC = [[LHLHomeController alloc] init];
    LHLNavigationController *nav1 = [[LHLNavigationController alloc] initWithRootViewController:homeVC];
    [self addChildViewController:nav1];
    
    LHLParentsController *parentVC = [[LHLParentsController alloc] init];
    LHLNavigationController *nav2 = [[LHLNavigationController alloc] initWithRootViewController:parentVC];
    [self addChildViewController:nav2];
    
    LHLClassController *classVC = [[LHLClassController alloc] init];
    LHLNavigationController *nav3 = [[LHLNavigationController alloc] initWithRootViewController:classVC];
    [self addChildViewController:nav3];
    
    LHLMeController *meVC = [[LHLMeController alloc] init];
    meVC.navigationItem.title = @"个人中心";
    LHLNavigationController *nav4 = [[LHLNavigationController alloc] initWithRootViewController:meVC];
    [self addChildViewController:nav4];
}

- (void)setuUpTabBarImage{
    // 设置按钮的标题和图片
    LHLNavigationController *nav = self.childViewControllers[0];
    [nav setTabBarItemImage:@"tab_home" selectImage:@"tab_home-on" title:@"首页"];
    
    LHLNavigationController *nav1 = self.childViewControllers[1];
    [nav1 setTabBarItemImage:@"tab_user-group" selectImage:@"tab_user-group-on" title:@"家长"];
    
    LHLNavigationController *nav2 = self.childViewControllers[2];
    [nav2 setTabBarItemImage:@"tab_graduation" selectImage:@"tab_graduation-on" title:@"报班"];
    
    LHLNavigationController *nav3 = self.childViewControllers[3];
    [nav3 setTabBarItemImage:@"tab_user" selectImage:@"tab_user-on" title:@"我的"];
}

@end




















