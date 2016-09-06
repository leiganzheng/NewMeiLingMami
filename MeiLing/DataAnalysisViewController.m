//
//  DataAnalysisViewController.m
//  MeiLing
//
//  Created by leiganzheng on 16/9/6.
//  Copyright © 2016年 karashock. All rights reserved.
//

#import "DataAnalysisViewController.h"

@interface DataAnalysisViewController ()

@end

@implementation DataAnalysisViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"数据分析";
    for (UIView *v in self.view.subviews) {
        if ([v isKindOfClass:[UIButton class]]&&v.tag !=100){
            v.layer.masksToBounds = YES;
            v.layer.cornerRadius = 5;
        }
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
