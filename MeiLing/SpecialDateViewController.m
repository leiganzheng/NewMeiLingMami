//
//  SpecialDateViewController.m
//  MeiLing
//
//  Created by leiganzheng on 16/9/5.
//  Copyright © 2016年 karashock. All rights reserved.
//

#import "SpecialDateViewController.h"

@interface SpecialDateViewController ()

@end

@implementation SpecialDateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"特殊日期";
    for (UIView *v in self.view.subviews) {
        if ([v isKindOfClass:[UIButton class]]) {
            v.layer.cornerRadius = 5;
            v.layer.masksToBounds = YES;
        }
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
