//
//  HomeViewController.m
//  JWY
//
//  Created by 冷洪林 on 2016/12/28.
//  Copyright © 2016年 冷洪林. All rights reserved.
//

#import "LHLHomeController.h"
#import "UIColor+LHLUtilites.h"

@interface LHLHomeController ()

@property (nonatomic, strong) UIScrollView *scrollView;

@end

@implementation LHLHomeController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor colorWithString:@"#F5F5F5"];
    
    // 导航条右边按钮
    [self renderRightBarItem];
    
    // mainView
    [self renderMainView];
    
    // 去除导航栏下边的黑线
    [self.navigationController.navigationBar setBackgroundImage:[[UIImage alloc] init] forBarMetrics:UIBarMetricsDefault];
    [self.navigationController.navigationBar setShadowImage:[[UIImage alloc] init]];
}

- (void) renderRightBarItem{
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 90, 44)];
    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc] initWithCustomView:view];
    self.navigationItem.rightBarButtonItem = rightItem;
    
    UIButton *searchBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 40, 44)];
    [searchBtn setImage:[UIImage imageNamed:@"search"] forState:UIControlStateNormal];
    [searchBtn addTarget:self action:@selector(clickSearchBTn) forControlEvents:UIControlEventTouchUpInside];
    [view addSubview:searchBtn];
    
    UIButton *msgBtn = [[UIButton alloc] initWithFrame:CGRectMake(50, 0, 40, 44)];
    [msgBtn setImage:[UIImage imageNamed:@"main_mes"] forState:UIControlStateNormal];
    [msgBtn addTarget:self action:@selector(clickMsgBTn) forControlEvents:UIControlEventTouchUpInside];
    [view addSubview:msgBtn];
}

- (void)renderMainView{
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, ScreenWidth, ScreenHeight - 64)];
    scrollView.backgroundColor = [UIColor redColor];
    scrollView.contentSize = CGSizeMake(ScreenWidth, 1500);
    [self.view addSubview:scrollView];
    
    LHLHeaderView *headerView = [[LHLHeaderView alloc] initWithFrame:CGRectMake(0, 0, ScreenWidth, 300)];
    [scrollView addSubview:headerView];
    self.scrollView=scrollView;
    
    CGFloat Y = CGRectGetMaxY(headerView.frame);
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, Y + 20, ScreenWidth, 500)];
    view.backgroundColor = [UIColor redColor];
    [scrollView addSubview:view];
}



- (void)clickSearchBTn{
    NSLog(@"搜索");
}

- (void)clickMsgBTn{
    NSLog(@"消息");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
