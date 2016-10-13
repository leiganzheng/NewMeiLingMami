//
//  YSViewController.m
//  MeiLing
//
//  Created by leiganzheng on 16/10/13.
//  Copyright © 2016年 karashock. All rights reserved.
//

#import "YSViewController.h"
#import "YSLContainerViewController.h"
#import "PlayListTableViewController.h"
#import "ArtistsViewController.h"
#import "SampleViewController.h"
@interface YSViewController () <YSLContainerViewControllerDelegate>

@end

@implementation YSViewController

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // NavigationBar
    UILabel *titleView = [[UILabel alloc] initWithFrame:CGRectZero];
    titleView.font = [UIFont fontWithName:@"Futura-Medium" size:19];
    titleView.textColor = [UIColor colorWithRed:0.333333 green:0.333333 blue:0.333333 alpha:1.0];
    titleView.text = @"美标准";
    [titleView sizeToFit];
    titleView.backgroundColor = [UIColor clearColor];
    self.navigationItem.titleView = titleView;
    
    // SetUp ViewControllers
    PlayListTableViewController *playListVC = [[PlayListTableViewController alloc]initWithNibName:@"PlayListTableViewController" bundle:nil];
    playListVC.title = @"店物标准";
    
    ArtistsViewController *artistVC = [[ArtistsViewController alloc]initWithNibName:@"ArtistsViewController" bundle:nil];
    artistVC.title = @"标准规范";
    
    SampleViewController *sampleVC1 = [[SampleViewController alloc]initWithNibName:@"SampleViewController" bundle:nil];
    sampleVC1.title = @"健康美";
    
    
    
    // ContainerView
    float statusHeight = [[UIApplication sharedApplication] statusBarFrame].size.height;
    float navigationHeight = self.navigationController.navigationBar.frame.size.height;
    
    YSLContainerViewController *containerVC = [[YSLContainerViewController alloc]initWithControllers:@[playListVC,artistVC,sampleVC1]
                                                                                        topBarHeight:statusHeight + navigationHeight
                                                                                parentViewController:self];
    containerVC.delegate = self;
    containerVC.menuItemFont = [UIFont fontWithName:@"Futura-Medium" size:16];
    
    [self.view addSubview:containerVC.view];
}

#pragma mark -- YSLContainerViewControllerDelegate
- (void)containerViewItemIndex:(NSInteger)index currentController:(UIViewController *)controller
{
    //    NSLog(@"current Index : %ld",(long)index);
    //    NSLog(@"current controller : %@",controller);
    [controller viewWillAppear:YES];
}
@end
