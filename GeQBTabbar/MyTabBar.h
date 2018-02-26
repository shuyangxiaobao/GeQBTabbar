//
//  MyTabBar.h
//  MyTabBarDemo
//
//  Created by gaomingyang1987 on 16/6/14.
//  Copyright © 2016年 gaomingyang1987. All rights reserved.
// 1.0.4

#import <UIKit/UIKit.h>

@class MyTabBar;

//传递给调用者
@protocol MyTabBarDelegate <NSObject>

-(void)selectedMyTabBar:(MyTabBar *)tabbar from:(NSInteger)from to:(NSInteger)to;

@end


@interface MyTabBar : UIView

@property (nonatomic,weak) id<MyTabBarDelegate> delegate;
/**
 通过添加图片的方式创建button
 */
-(void)addButtonWithImage:(UIImage *)image selectedImg:(UIImage *)selectedImg andTitle:(NSString*)title;


@end
