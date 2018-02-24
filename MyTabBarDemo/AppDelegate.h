//
//  AppDelegate.h
//  MyTabBarDemo
//
//  Created by gaomingyang1987 on 16/6/14.
//  Copyright © 2016年 gaomingyang1987. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyTabBarController.h"
@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (nonatomic,strong) MyTabBarController *myTabBarVC;
@property (nonatomic,strong) UINavigationController *myNav;

@end

