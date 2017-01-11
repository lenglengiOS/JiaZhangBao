//
//  HomeViewController.m
//  JWY
//
//  Created by 冷洪林 on 2016/12/28.
//  Copyright © 2016年 冷洪林. All rights reserved.
//

#import "LHLHomeController.h"

@interface LHLHomeController ()

@end

@implementation LHLHomeController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 导航条右边按钮
    [self renderRightBarItem];
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

- (void)clickSearchBTn{
    NSLog(@"clickSearchBTn");
}

- (void)clickMsgBTn{
    NSLog(@"clickMsgBTn");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 10;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellID = @"cellID";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:cellID];
    }
    
    cell.textLabel.text = @"66";
    
    return cell;
}

@end
