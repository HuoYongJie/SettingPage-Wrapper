//
//  CYXTabBarController.m
//   
//
//  Created by liman on 15/9/4.
//  Copyright (c) 2015年 liman. All rights reserved.
//

#import "TabBarController.h"
#import "OneViewController.h"
#import "TwoViewController.h"
#import "ThreeViewController.h"
#import "FourViewController.h"

@interface TabBarController ()

@end

@implementation TabBarController

- (void)viewDidLoad
{
    [super viewDidLoad];

    [self setUpAllChildViewController];
}

/**
 *  添加所有子控制器
 */
- (void)setUpAllChildViewController{
    // 1.添加第一个控制器
    OneViewController *oneVC = [OneViewController new];
    [self setUpOneChildViewController:oneVC image:[UIImage imageNamed:@"tab_home_icon"] title:@"首页"];
    
    // 2.添加第2个控制器
    TwoViewController *twoVC = [TwoViewController new];
    [self setUpOneChildViewController:twoVC image:[UIImage imageNamed:@"js"] title:@"技术"];
    
    // 3.添加第3个控制器
    ThreeViewController *threeVC = [ThreeViewController new];
    [self setUpOneChildViewController:threeVC image:[UIImage imageNamed:@"qw"] title:@"博文"];
    
    // 4.添加第4个控制器
    FourViewController *fourVC = [FourViewController new];
    [self setUpOneChildViewController:fourVC image:[UIImage imageNamed:@"user"] title:@"设置"];
}


/**
 *  添加一个子控制器的方法
 */
- (void)setUpOneChildViewController:(UIViewController *)viewController image:(UIImage *)image title:(NSString *)title{
    
    UINavigationController *navC = [[UINavigationController alloc]initWithRootViewController:viewController];
    navC.title = title;
    navC.tabBarItem.image = image;
    [navC.navigationBar setBackgroundImage:[UIImage imageNamed:@"commentary_num_bg"] forBarMetrics:UIBarMetricsDefault];
    
    viewController.navigationItem.title = title;
    
    [self addChildViewController:navC];
}





@end
