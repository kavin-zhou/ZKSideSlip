//
//  UIBarButtonItem+Extension.h
//  ZKSideSlip
//
//  Created by ZK on 16/5/28.
//  Copyright © 2016年 周康. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Extension)
+ (UIBarButtonItem *)itemWithImageName:(NSString *)imageName target:(id)target action:(SEL)action;
@end
