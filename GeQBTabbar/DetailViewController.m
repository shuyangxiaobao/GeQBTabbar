//
//  DetailViewController.m
//  MyTabBarDemo
//
//  Created by gaomingyang1987 on 16/6/14.
//  Copyright © 2016年 gaomingyang1987. All rights reserved.
//

#import "DetailViewController.h"
#import "AppDelegate.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"详情页";
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated{
    NSLog(@"%s",__func__);
    [super viewWillAppear:animated];
    //隐藏tabbar
    AppDelegate *app = (AppDelegate *)[UIApplication sharedApplication].delegate;
    [app.myTabBarVC hiddenTabbar];
    app.myNav.navigationBar.hidden = NO;
}

-(void)viewWillDisappear:(BOOL)animated{
    NSLog(@"%s",__func__);
    [super viewWillDisappear: animated];
    
//    AppDelegate *app = (AppDelegate *)[UIApplication sharedApplication].delegate;
//    app.myNav.navigationBar.hidden = YES;

}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
