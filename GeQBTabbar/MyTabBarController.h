//
//  MyTabBarController.h
//  MyTabBarDemo
//
//  Created by gaomingyang1987 on 16/6/14.
//  Copyright © 2016年 gaomingyang1987. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyTabBar.h"

@interface MyTabBarController : UITabBarController
@property(nonatomic,strong) MyTabBar *myView;

/**
 隐藏tabbar
 */
-(void)hiddenTabbar;
/**
 显示tabbar
 */
-(void)showTabBar;
@end
