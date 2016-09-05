//
//  GoalSettingViewController.m
//  MeiLing
//
//  Created by leiganzheng on 16/9/5.
//  Copyright © 2016年 karashock. All rights reserved.
//

#import "GoalSettingViewController.h"

@interface GoalSettingViewController ()
@property (weak, nonatomic) IBOutlet UIButton *btn1;
@property (weak, nonatomic) IBOutlet UIButton *btn2;
@property (weak, nonatomic) IBOutlet UIButton *btn3;
@property (weak, nonatomic) IBOutlet UIButton *btn4;
@property (weak, nonatomic) IBOutlet UIView *customV;
@property (weak, nonatomic) IBOutlet UIButton *btn5;

@end

@implementation GoalSettingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _btn1.layer.masksToBounds = YES;
    _btn1.layer.cornerRadius = 5;
    
    _btn2.layer.masksToBounds = YES;
    _btn2.layer.cornerRadius = 5;
    
    _btn3.layer.masksToBounds = YES;
    _btn3.layer.cornerRadius = 5;
    
    _btn4.layer.masksToBounds = YES;
    _btn4.layer.cornerRadius = 5;
    
    _btn5.layer.masksToBounds = YES;
    _btn5.layer.cornerRadius = 5;
    
    _customV.layer.masksToBounds = YES;
    _customV.layer.cornerRadius = 5;
    
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
