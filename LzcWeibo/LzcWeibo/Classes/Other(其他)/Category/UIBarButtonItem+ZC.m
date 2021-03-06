//
//  UIBarButtonItem+ZC.m
//  LzcWeibo
//
//  Created by LuzhiChao on 16/5/11.
//  Copyright © 2016年 LuzhiChao. All rights reserved.
//

#import "UIBarButtonItem+ZC.h"

@implementation UIBarButtonItem (ZC)

/**
 *   快速创建一个用来显示图片的icon
 *
 *  @param icon      默认图片

 *  @param highIcon  高亮图片

 *  @param target   控制器
 *  @param action    事件

 *
 *  @return 按钮
 */
+ (UIBarButtonItem *)itemWithIcon:(NSString *)icon highIcon:(NSString *)highIcon target:(id)target action:(SEL)action
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setBackgroundImage:[UIImage imageNamed:icon] forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageNamed:highIcon] forState:UIControlStateHighlighted];
    button.frame = (CGRect){CGPointZero,button.currentBackgroundImage.size};
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return [[UIBarButtonItem alloc]initWithCustomView:button];
}

@end
