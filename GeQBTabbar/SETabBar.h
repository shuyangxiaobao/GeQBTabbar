
#import <UIKit/UIKit.h>

@class SETabBar;

//传递给调用者
@protocol MyTabBarDelegate <NSObject>

-(void)selectedMyTabBar:(SETabBar *)tabbar from:(NSInteger)from to:(NSInteger)to;

@end


@interface SETabBar : UIView

@property (nonatomic,weak) id<MyTabBarDelegate> delegate;
/**
 通过添加图片的方式创建button
 */
-(void)addButtonWithImage:(UIImage *)image selectedImg:(UIImage *)selectedImg andTitle:(NSString*)title;


@end
