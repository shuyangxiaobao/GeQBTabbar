//
//  MyTabBarController.m
//  MyTabBarDemo
//
//  Created by gaomingyang1987 on 16/6/14.
//  Copyright © 2016年 gaomingyang1987. All rights reserved.
//

#import "MyTabBarController.h"
#import "DetailViewController.h"
#import "AppDelegate.h"

@interface MyTabBarController ()<MyTabBarDelegate>

@end

@implementation MyTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initUI];
}

-(void)jumpDetail:(NSNotification *)noti{
    NSDictionary *dictionary = [noti userInfo];
    
    DetailViewController *detail = [[DetailViewController alloc] init];
    [self.navigationController pushViewController:detail animated:YES];
    
    //隐藏tabbar
    AppDelegate *app = (AppDelegate *)[UIApplication sharedApplication].delegate;
    [app.myTabBarVC hiddenTabbar];
}

-(void)initUI{
    //1.移除系统自带的tabbar
    [self.tabBar removeFromSuperview];
    //2.初始化自定义的tabbar
    _myView = [[MyTabBar alloc] initWithFrame:CGRectMake(0, [UIScreen mainScreen].bounds.size.height-self.tabBar.bounds.size.height, [UIScreen mainScreen].bounds.size.width, self.tabBar.bounds.size.height)];
    //3.添加到当前的view上
    [self.view addSubview:_myView];
    //4.设置代理
    _myView.delegate = self;
    self.tabBarController.tabBar.delegate = self;
    //5.根据图片按照顺序添加按钮
    [self addButtons];
    //6.添加对应的UIViewController
    [self addViewControllers];
}

/**
添加viewcontroller
 */
-(void)addViewControllers{
    NSArray *vcNames = @[@"OneViewController",@"TwoViewController",@"ThreeViewController",@"FourViewController",@"FiveViewController"];
    NSArray *vcTitles = @[@"首页",@"分类",@"动态",@"设置",@"我"];
    NSMutableArray *navs = [[NSMutableArray alloc] init];
    for (int i=0; i<vcNames.count; i++) {
        UIViewController *vc = [[NSClassFromString(vcNames[i]) alloc] init];
        vc.title = vcTitles[i];
        UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
        [navs addObject:nav];
    }
    self.viewControllers = navs;
}

/**
 添加图片创建按钮
 */
-(void)addButtons{
//正常状态下的图片名字
NSArray *normalImgs= @[@"TabBarIconDestinationNormal",@"TabBarIconFeaturedNormal",@"TabBarIconMyNormal",@"TabBarIconOfflineNormal",@"TabBarIconToolboxNormal"];
//选中状态下的图片名字
 NSArray *selectedImages = @[@"TabBarIconDestination",@"TabBarIconFeatured",@"TabBarIconMy",@"TabBarIconOffline",@"TabBarIconToolbox"];
    NSArray *vcTitles = @[@"首页",@"分类",@"动态",@"设置",@"我"];

    for (int i = 0 ; i<normalImgs.count; i++) {
        [_myView addButtonWithImage:[UIImage imageNamed:normalImgs[i]] selectedImg:[UIImage imageNamed:selectedImages[i]] andTitle:vcTitles[i]];
    }
 
  
}

#pragma mark -- MyTabBarDelegate
-(void)selectedMyTabBar:(MyTabBar *)tabbar from:(NSInteger)from to:(NSInteger)to{
    self.selectedIndex = to;
}


-(void)hiddenTabbar{
    return;
    [UIView animateWithDuration:0.5 animations:^{
        _myView.frame = CGRectMake(0, [UIScreen mainScreen].bounds.size.height, [UIScreen mainScreen].bounds.size.width, self.tabBar.bounds.size.height);
    }];
}
-(void)showTabBar{
    return;

    [UIView animateWithDuration:0.5 animations:^{
      _myView.frame = CGRectMake(0, [UIScreen mainScreen].bounds.size.height-self.tabBar.bounds.size.height, [UIScreen mainScreen].bounds.size.width, self.tabBar.bounds.size.height);
    }];
    

}
@end
