//
//  Tool.h
//  MeiLing
//
//  Created by leiganzheng on 16/1/21.
//  Copyright © 2016年 leiganzheng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Tool : NSObject
+ (instancetype)sharedInstance;
-(void)enterRootViewController:(UIViewController *)vc animated:(BOOL)animated;
- (void)comfingView:(UIView *)v;
-(void)addLine:(UIView *)v withColor:(UIColor *)color;
@end
