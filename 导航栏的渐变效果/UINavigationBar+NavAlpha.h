//
//  UINavigationBar+NavAlpha.h
//  导航栏的渐变效果
//
//  Created by 涂世展 on 16/9/4.
//  Copyright © 2016年 涂世展. All rights reserved.
//

#import <UIKit/UIKit.h>

//自定义UINavigationBar分类,但是分类添加的属性,没有生成下划线的成员变量,也没有生成setter和getter方法
@interface UINavigationBar (NavAlpha)

//添加属性
@property (nonatomic, strong) UIView *alphaView;

//接收tableView渐变的参数
- (void)setAlphaNavigationWithColor: (UIColor *)color;

@end
