//
//  UINavigationBar+NavAlpha.m
//  导航栏的渐变效果
//
//  Created by 涂世展 on 16/9/4.
//  Copyright © 2016年 涂世展. All rights reserved.
//

#import "UINavigationBar+NavAlpha.h"
#import <objc/runtime.h>

@implementation UINavigationBar (NavAlpha)

static char alview;
//利用runtime运行时的优势实现set和get方法

- (void)setAlphaView:(UIView *)alphaView{
    
    objc_setAssociatedObject(self,&alview , alphaView, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

-(UIView *)alphaView{
    
    return objc_getAssociatedObject(self, &alview);
}

//设置渐变的方法
- (void)setAlphaNavigationWithColor:(UIColor *)color{
    
    if (!self.alphaView) {
        
        //设置背景图片
        [self setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
        
        //创建自定义的透明的view
        self.alphaView = [[UIView alloc] initWithFrame:CGRectMake(0, -20, [UIScreen mainScreen].bounds.size.width, 64)];
        
        //插入添加
        [self insertSubview:self.alphaView atIndex:0];
        
    }
    //设置透明的颜色
    [self.alphaView setBackgroundColor:color];
}

@end
