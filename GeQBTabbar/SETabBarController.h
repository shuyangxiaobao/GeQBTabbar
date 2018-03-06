

#import <UIKit/UIKit.h>
#import "SETabBar.h"

@interface SETabBarController : UITabBarController
@property(nonatomic,strong) SETabBar *myView;

/**
 隐藏tabbar
 */
-(void)hiddenTabbar;
/**
 显示tabbar
 */
-(void)showTabBar;
@end
