//
//  QBButton.m
//  MyTabBarDemo
//
//  Created by 强宝戈 on 2018/2/24.
//  Copyright © 2018年 gaomingyang1987. All rights reserved.
//

#import "QBButton.h"

@implementation QBButton


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
#warning 1.写文字
    CGContextSetRGBFillColor (context,  1, 0, 1.0, 0.1);//设置填充颜色
    UIFont  *font = [UIFont boldSystemFontOfSize:12.0];//设置
    
    
    NSMutableParagraphStyle *paragraphStyle = [[NSParagraphStyle defaultParagraphStyle] mutableCopy];
    
    paragraphStyle.lineBreakMode = NSLineBreakByWordWrapping;
    paragraphStyle.alignment = NSTextAlignmentCenter;//水平居中

    
#warning 2.参考资料
    NSDictionary *attribute=@{
                              NSFontAttributeName:font,
                              NSParagraphStyleAttributeName:paragraphStyle,
                              NSBackgroundColorAttributeName:[UIColor clearColor],
                              NSForegroundColorAttributeName:_titleColor,
                              NSKernAttributeName:@1                              
                              };
    //    
    [_bottonTitle drawInRect:CGRectMake(0, 30,320/5, 20) withAttributes:attribute];
}


@end
