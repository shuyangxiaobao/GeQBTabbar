

#import "SETabBar.h"
#import "SETabBarItem.h"

@interface SETabBar ()
//记录当前点击的按钮
@property (nonatomic,strong)SETabBarItem *selectedBtn;
@end


@implementation SETabBar

-(void)addButtonWithImage:(UIImage *)image selectedImg:(UIImage *)selectedImg andTitle:(NSString*)title{
    SETabBarItem *button = [SETabBarItem buttonWithType:UIButtonTypeCustom];
    [button setImage:image forState:UIControlStateNormal];
    [button setImage:selectedImg forState:UIControlStateSelected];
    button.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 22, 0);
    button.bottonTitle = title;
    button.titleColor = [UIColor grayColor];

    //添加点击事件
    [button addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:button];
    //如果是第一个按钮，就直接调用点击方法
    if (self.subviews.count == 1) {
        [self click:button];
    }
}
/**
 点击事件触发的方法
 */
-(void)click:(SETabBarItem *)button{
    self.selectedBtn.selected = NO;
//    self.selectedBtn.bottonTitle = @"未选中";

    self.selectedBtn.titleColor = [UIColor grayColor];

    button.selected = YES;
    
    [button setNeedsDisplay];
    
    if (self.delegate && [self.delegate respondsToSelector:@selector(selectedMyTabBar:from:to:)]) {
        [self.delegate selectedMyTabBar:self from:self.selectedBtn.tag to:button.tag];
    }

//    button.bottonTitle = @"选中";
    button.titleColor = [UIColor colorWithRed:22/255.0 green:134/255.0 blue:218/255.0 alpha:1.0];

    self.selectedBtn = button;
}
/**
 要显示的时候调用
 */
-(void)layoutSubviews{
    NSInteger count = self.subviews.count;
    for (int i=0; i<count; i++) {
        UIButton *button = self.subviews[i];
        button.tag = i;
        //设置button的frame
        CGFloat width = self.bounds.size.width/count;
        CGFloat x  = i*width;
        CGFloat y  = 0;
        CGFloat height = self.bounds.size.height;
        button.frame = CGRectMake(x, y, width, height);
    }
    self.backgroundColor = [UIColor yellowColor];
}
@end
