//
//  ZKLeftMenuView.m
//  ZKSideSlip
//
//  Created by ZK on 16/5/28.
//  Copyright © 2016年 周康. All rights reserved.
//

#import "ZKLeftMenuView.h"

@implementation ZKLeftMenuView

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self setup];
    }
    return self;
}

- (void)setup
{
    [self setupButtonWithIconName:@"sidebar_nav_news" title:@"新闻"];
    [self setupButtonWithIconName:@"sidebar_nav_reading" title:@"订阅"];
    [self setupButtonWithIconName:@"sidebar_nav_photo" title:@"图片"];
    [self setupButtonWithIconName:@"sidebar_nav_video" title:@"视频"];
    [self setupButtonWithIconName:@"sidebar_nav_comment" title:@"评论"];
    [self setupButtonWithIconName:@"sidebar_nav_radio" title:@"电台"];
}

- (void)setupButtonWithIconName:(NSString *)iconName title:(NSString *)title
{
    UIButton *button = [[UIButton alloc] init];
    [button setTitle:title forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:iconName] forState:UIControlStateNormal];
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    button.titleLabel.font = [UIFont systemFontOfSize:17.f];
    
    button.adjustsImageWhenHighlighted = NO;
    
    [self addSubview:button];
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    NSUInteger btnCount = self.subviews.count;
    CGFloat btnW = self.width;
    CGFloat btnH = self.height / btnCount;
    for (int i = 0; i < btnCount; i ++) {
        UIButton *btn = self.subviews[i];
        btn.width = btnW;
        btn.height = btnH;
        btn.y = i * btnH;
    }
}

@end
