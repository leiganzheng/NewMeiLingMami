//
//  SearchViewController.m
//  MeiLing
//
//  Created by leiganzheng on 16/9/7.
//  Copyright © 2016年 karashock. All rights reserved.
//

#import "SearchViewController.h"
#import "Tool.h"
@interface SearchViewController ()

@end

@implementation SearchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    for (UIView *v in self.view.subviews) {
        if ([v isKindOfClass:[UIButton class]]) {
            [[Tool sharedInstance] comfingViewMask:v];
        }
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
