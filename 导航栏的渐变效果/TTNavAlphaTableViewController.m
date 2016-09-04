//
//  TTNavAlphaTableViewController.m
//  导航栏的渐变效果
//
//  Created by 涂世展 on 16/9/4.
//  Copyright © 2016年 涂世展. All rights reserved.
//

#import "TTNavAlphaTableViewController.h"
#import "UINavigationBar+NavAlpha.h"

@interface TTNavAlphaTableViewController ()

@end

@implementation TTNavAlphaTableViewController

/*
 需求:当滑动界面的时候,需要nav实现渐变透明的效果
 
 说明:为了测试将自带的viewController删除,用了UITableViewController,可以滑动
 
 原因:当修改nav的透明度的时候会有问题,会导致nav上的item也变为透明,(aphla = 0的时候不能响应事件)
 
 目的:通过添加一个UIView改变颜色的alpha来实现透明的渐变效果
 */
- (void)viewDidLoad {
    [super viewDidLoad];
  
}
//代理方法
-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    
    UIColor *color = [UIColor redColor];
    
    //渐变的变为透明的
    //这里需要用到KVO监听scrollView的Content的y值
    
    CGFloat scrollY = scrollView.contentOffset.y;
    
    CGFloat alphaScale = ( 30 + 64 - scrollY ) / 64;
    
    if (scrollY > 30) {
        
        [self.navigationController.navigationBar setAlphaNavigationWithColor:[color colorWithAlphaComponent:alphaScale]];
    }else{
        
        [self.navigationController.navigationBar setAlphaNavigationWithColor:[color colorWithAlphaComponent:1]];
    }
    
}

@end
