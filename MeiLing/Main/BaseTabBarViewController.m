//
//  BaseTabBarViewController.m
//  MeiLing
//
//  Created by leiganzheng on 16/9/5.
//  Copyright © 2016年 karashock. All rights reserved.
//

#import "BaseTabBarViewController.h"
#import "Define.h"
@interface BaseTabBarViewController ()

@end

@implementation BaseTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tabBar.translucent = NO;
    self.tabBar.barTintColor = kThemeColor;
    self.tabBar.tintColor = [UIColor whiteColor];
//    UIMenuItem *item = self.tabBar.items[0];
//    item.
//    self.tabBar.items[0] = [[UITabBarItem alloc]initWithTitle:@"管店" image:[UIImage imageNamed:@"icon-管店"] selectedImage:[UIImage imageNamed:@"icon-管店-选中"]];
//    UITabBarItem *items1 = [[UITabBarItem alloc]initWithTitle:@"" image:[UIImage imageNamed:@"icon-微课堂"] selectedImage:[UIImage imageNamed:@"icon-微课堂-选中"]];
//    UITabBarItem *items2 = [[UITabBarItem alloc]initWithTitle:@"" image:[UIImage imageNamed:@"icon-爱尚城"] selectedImage:[UIImage imageNamed:@"icon-爱尚城-选中"]];
//    UITabBarItem *items3 = [[UITabBarItem alloc]initWithTitle:@"" image:[UIImage imageNamed:@"icon-我"] selectedImage:[UIImage imageNamed:@"icon-我-选中"]];
////
//    NSArray *array = [[NSArray alloc]initWithObjects:items0,items1,items2,items3,nil];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
