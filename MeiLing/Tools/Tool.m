//
//  Tool.m
//  MeiLing
//
//  Created by leiganzheng on 16/1/21.
//  Copyright © 2016年 leiganzheng. All rights reserved.
//

#import "Tool.h"
#import "AppDelegate.h"
#import "Define.h"

@implementation Tool
+ (instancetype)sharedInstance {
    static Tool *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (sharedInstance == nil) {
            sharedInstance = [[self alloc] init];
        }
    });
    return sharedInstance;
}

- (id)init {
    self = [super init];
    if (self) {
    }
    return self;
}
- (void)comfingView:(UIView *)v{
    v.layer.cornerRadius = 5;
    v.layer.masksToBounds = YES;
    v.layer.borderColor = [UIColor colorWithRed:212/255.0f green:192/255.0f blue:157/255.0f alpha:1.0f].CGColor;
    v.layer.borderWidth = 1;
}
-(void)comfingViewMask:(UIView *)v{
    v.layer.cornerRadius = 5;
    v.layer.masksToBounds = YES;
}

-(void)addLine:(UIView *)v withColor:(UIColor *)color{
    UIView *line = [[UIView alloc]initWithFrame:CGRectMake(0, v.frame.size.height-1, v.frame.size.width, 0.5)];
    line.backgroundColor = [UIColor colorWithRed:212/255.0f green:192/255.0f blue:157/255.0f alpha:1.0f];
    [v addSubview:line];
}
- (void)enterRootViewController:(UIViewController *)vc animated:(BOOL)animated{
    AppDelegate *appDelegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    UIView *animationView = [[UIScreen mainScreen] snapshotViewAfterScreenUpdates:false];
    [appDelegate.window addSubview:animationView];
    void(^changeRootViewController)() = ^{
        appDelegate.window.rootViewController = vc;
        if (animated) {
            [UIView animateWithDuration:0.5 animations:^{
                animationView.transform = CGAffineTransformMakeScale(3.0, 3.0);
                animationView.alpha = 0;
            } completion:^(BOOL finished) {
                [animationView removeFromSuperview];
            }];
        }else {
            [animationView removeFromSuperview];
        }
    };
    UIViewController *viewCtro = appDelegate.window.rootViewController;
    if (viewCtro.presentedViewController != nil) {
        [viewCtro dismissViewControllerAnimated:false completion:^{
            changeRootViewController();
        }];
    }else {
        changeRootViewController();
    }
}
@end
