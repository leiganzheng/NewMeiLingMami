//
//  CareDayLogViewController.m
//  MeiLing
//
//  Created by leiganzheng on 16/9/5.
//  Copyright © 2016年 karashock. All rights reserved.
//

#import "CareDayLogViewController.h"
#import "Define.h"
@interface CareDayLogViewController ()

@property (weak, nonatomic) IBOutlet UIButton *postBtn;
@end

@implementation CareDayLogViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"护理日志";
    _postBtn.layer.cornerRadius = 5;
    _postBtn.layer.masksToBounds = YES;
    
    for (UIView * v in self.view.subviews) {
        if ([v isKindOfClass:[UITextField class]]) {
            v.layer.borderColor = kThemeColor.CGColor;
            v.layer.borderWidth = 0.5;
            v.layer.cornerRadius = 5;
            v.layer.masksToBounds = YES;

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
