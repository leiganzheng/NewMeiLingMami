//
//  WorkViewController.m
//  MeiLing
//
//  Created by leiganzheng on 16/9/3.
//  Copyright © 2016年 karashock. All rights reserved.
//

#import "WorkViewController.h"
#import "Define.h"
@interface WorkViewController ()

@property (weak, nonatomic) IBOutlet UIButton *btn1;
@property (weak, nonatomic) IBOutlet UIButton *btn2;
@property (weak, nonatomic) IBOutlet UIButton *btn3;

@property (weak, nonatomic) IBOutlet UIButton *btnC1;
@property (weak, nonatomic) IBOutlet UIButton *btnC2;
@property (weak, nonatomic) IBOutlet UIButton *btnC3;
@property (weak, nonatomic) IBOutlet UIButton *btnC4;
@property (weak, nonatomic) IBOutlet UIButton *btnC5;
@property (weak, nonatomic) IBOutlet UIButton *btnC6;


@property (weak, nonatomic) IBOutlet UIButton *btnR1;
@property (weak, nonatomic) IBOutlet UIButton *btnR2;
@property (weak, nonatomic) IBOutlet UIButton *btnR3;

@property (weak, nonatomic) IBOutlet UIButton *btn11;
@property (weak, nonatomic) IBOutlet UIButton *btn12;
@property (weak, nonatomic) IBOutlet UIButton *btn13;
@end

@implementation WorkViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"分店选择";
    

    _btn1.layer.borderColor = kThemeColor.CGColor;
    _btn1.layer.borderWidth = 0.5;
    _btn2.layer.borderColor = kThemeColor.CGColor;
    _btn2.layer.borderWidth = 0.5;
    _btn3.layer.borderColor = kThemeColor.CGColor;
    _btn3.layer.borderWidth = 0.5;
    
    _btn11.layer.borderColor = kThemeColor.CGColor;
    _btn11.layer.borderWidth = 0.5;
    _btn12.layer.borderColor = kThemeColor.CGColor;
    _btn12.layer.borderWidth = 0.5;
    _btn13.layer.borderColor = kThemeColor.CGColor;
    _btn13.layer.borderWidth = 0.5;
    
    _btnR1.layer.cornerRadius = 5;
    _btnR1.layer.masksToBounds = YES;
    _btnR2.layer.cornerRadius = 5;
    _btnR2.layer.masksToBounds = YES;
    _btnR3.layer.cornerRadius = 5;
    _btnR3.layer.masksToBounds = YES;

    _btnC1.layer.cornerRadius = _btnC1.frame.size.width/2;
    _btnC1.layer.masksToBounds = YES;
    _btnC2.layer.cornerRadius = _btnC2.frame.size.width/2;
    _btnC2.layer.masksToBounds = YES;
    _btnC3.layer.cornerRadius = _btnC3.frame.size.width/2;
    _btnC3.layer.masksToBounds = YES;
    _btnC4.layer.cornerRadius = _btnC4.frame.size.width/2;
    _btnC4.layer.masksToBounds = YES;
    _btnC5.layer.cornerRadius = _btnC5.frame.size.width/2;
    _btnC5.layer.masksToBounds = YES;
    _btnC6.layer.cornerRadius = _btnC6.frame.size.width/2;
    _btnC6.layer.masksToBounds = YES;
   
    
    
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
