//
//  LHLHeaderView.m
//  JWY
//
//  Created by 冷洪林 on 2017/1/11.
//  Copyright © 2017年 冷洪林. All rights reserved.
//

#import "LHLHeaderView.h"

@interface LHLHeaderView ()
@end

@implementation LHLHeaderView

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [self renderTopView];
    }
    return self;
}

- (void)renderTopView{
    
    UIView *topView = [[[NSBundle mainBundle] loadNibNamed:@"LHLHeaderView" owner:nil options:nil] lastObject];
    topView.frame = self.frame;
    [self addSubview:topView];
    
}

- (IBAction)loginRegister:(id)sender {
    
    NSLog(@"登录、注册");
}

- (IBAction)youeryuan:(id)sender {
    NSLog(@"幼儿园");
}

- (IBAction)xiaoxue:(id)sender {
    NSLog(@"小学");
}

- (IBAction)peixunban:(id)sender {
    NSLog(@"培训班");
}
- (IBAction)tuoguanban:(id)sender {
    NSLog(@"托管班");
}
- (IBAction)jiaoyu:(id)sender {
    NSLog(@"教育升学");
}
- (IBAction)zhishi:(id)sender {
    NSLog(@"家长知识");
}
- (IBAction)jiazhang:(id)sender {
    NSLog(@"家长圈");
}

- (IBAction)taolun:(id)sender {
    NSLog(@"热门讨论");
}

@end

















