//
//  MemberMViewController.m
//  MeiLing
//
//  Created by leiganzheng on 16/9/4.
//  Copyright © 2016年 karashock. All rights reserved.
//

#import "MemberMViewController.h"
#import "CustomInfoViewController.h"
#import "UIResponder+StoryBoard.h"

@interface MemberMViewController ()

@end

@implementation MemberMViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *rightButton = [[UIButton alloc]initWithFrame:CGRectMake(0,0,40,40)];
    [rightButton setImage:[UIImage imageNamed:@"加"] forState:UIControlStateNormal];
    [rightButton addTarget:self action:@selector(add) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.rightBarButtonItem= [[UIBarButtonItem alloc] initWithCustomView:rightButton];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - private method
- (void)add{
    [self.navigationController pushViewController:[CustomInfoViewController CreateFromStoryboardWithName:@"Main"] animated:YES];
}



@end
