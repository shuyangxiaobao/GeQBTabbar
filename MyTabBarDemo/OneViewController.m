//
//  OneViewController.m
//  MyTabBarDemo
//
//  Created by gaomingyang1987 on 16/6/14.
//  Copyright © 2016年 gaomingyang1987. All rights reserved.
//

#import "OneViewController.h"
#import "DetailViewController.h"
#import "AppDelegate.h"
@interface OneViewController ()

@end

@implementation OneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"OK" style:UIBarButtonItemStylePlain target:self action:@selector(click)];
    UIButton *button = [UIButton buttonWithType:(UIButtonTypeContactAdd)];
    button.frame = CGRectMake(100, 100, 100, 100);
    [self.view addSubview:button];
    [button addTarget:self action:@selector(click) forControlEvents:(UIControlEventTouchUpInside)];
    
    
}


-(void)click{
    DetailViewController *detail = [[DetailViewController alloc] init];
    AppDelegate *app = (AppDelegate *)[UIApplication sharedApplication].delegate;
    [app.myNav pushViewController:detail animated:YES];
}

-(void)viewWillAppear:(BOOL)animated{
    NSLog(@"%s",__func__);
    //显示tabbar
    AppDelegate *app = (AppDelegate *)[UIApplication sharedApplication].delegate;
    [app.myTabBarVC showTabBar];
}



-(void)viewWillDisappear:(BOOL)animated{
    NSLog(@"%s",__func__);
    [super viewWillDisappear: animated];
}






@end
