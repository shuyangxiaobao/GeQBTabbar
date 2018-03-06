//
//  BaseNavigationController.m
//  MyTabBarDemo
//
//  Created by 戈强宝 on 2018/3/6.
//  Copyright © 2018年 gaomingyang1987. All rights reserved.
//

#import "BaseNavigationController.h"
#import "DetailViewController.h"

@interface BaseNavigationController ()

@end

@implementation BaseNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer{
    
    // 当前页面是显示结果页，不响应滑动手势
    
    UIViewController *vc = [self.childViewControllers lastObject];
    
    if ([vc isKindOfClass:[DetailViewController class]]) {
        return NO;
    }
    return YES;
    
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
