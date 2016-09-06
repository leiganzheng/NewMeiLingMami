//
//  MainViewController.m
//  MeiLing
//
//  Created by leiganzheng on 16/9/4.
//  Copyright © 2016年 karashock. All rights reserved.
//

#import "MainViewController.h"
#import "Tool.h"
#import "Define.h"
#import "OrderMViewController.h"
#import "WorkViewController.h"
#import "MemberMViewController.h"
#import "UIResponder+StoryBoard.h"
#import "CareDayLogViewController.h"
#import "ActivityDayLogViewController.h"
#import "AppointmentMViewController.h"
#import "ServiceProjectViewController.h"
#import "DataAnalysisViewController.h"
#import "MessageModelViewController.h"
#import "RankingListViewController.h"

@interface MainViewController ()
@property (weak, nonatomic) IBOutlet UIButton *downLoadBtn;
@property (weak, nonatomic) IBOutlet UICollectionView *customCollectionV;
@property (strong, nonatomic) NSArray *dataArray;
@property (strong, nonatomic) NSArray *imageArray;
@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *rightButton = [[UIButton alloc]initWithFrame:CGRectMake(0,0,75,30)];
    [rightButton setTitle:@"分店设置" forState:UIControlStateNormal];
    [rightButton addTarget:self action:@selector(searchprogram) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.leftBarButtonItem= [[UIBarButtonItem alloc] initWithCustomView:rightButton];
    [[Tool sharedInstance] comfingView:self.downLoadBtn];
    self.dataArray = @[@"今日工作",@"订单管理",@"会员管理",@"服务项目",@"活动优惠",@"数据分析",@"消息提醒",@"预留开发"];
    self.imageArray = @[@"今日工作",@"订单管理",@"会员管理",@"服务项目",@"活动优惠",@"数据分析",@"消息提醒",@"预留开发"];
    [self.customCollectionV reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark -- UICollectionViewDataSource
//定义展示的UICollectionViewCell的个数
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.dataArray.count;
}
//定义展示的Section的个数
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}
//每个UICollectionView展示的内容
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * CellIdentifier = @"GradientCell";
    UICollectionViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:CellIdentifier forIndexPath:indexPath];
    UIImageView *imageV = (UIImageView *)[cell viewWithTag:100];
    
    [imageV setImage:[UIImage imageNamed:self.imageArray[indexPath.row]]];
    
    UILabel *title = (UILabel *)[cell viewWithTag:101];
    title.text = self.dataArray[indexPath.row];
    
    return cell;
}
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    UIViewController *vc ;
    if (indexPath.row == 0) {
        vc = [WorkViewController CreateFromStoryboardWithName:@"Main"];
        vc.hidesBottomBarWhenPushed = YES;
        
    }else if(indexPath.row == 1){
        vc = [OrderMViewController CreateFromStoryboardWithName:@"Main"];
        vc.hidesBottomBarWhenPushed = YES;
        
    }else if(indexPath.row == 2){

        vc = [MemberMViewController CreateFromStoryboardWithName:@"Main"];
        vc.hidesBottomBarWhenPushed = YES;

        
    }else if(indexPath.row == 3){
        vc = [ServiceProjectViewController CreateFromStoryboardWithName:@"Main"];
        vc.hidesBottomBarWhenPushed = YES;
        
    }else if(indexPath.row == 4){
        
        vc = [RankingListViewController CreateFromStoryboardWithName:@"Main"];
        vc.hidesBottomBarWhenPushed = YES;
        
    }else if(indexPath.row == 5){
        
        vc = [DataAnalysisViewController CreateFromStoryboardWithName:@"Main"];
        vc.hidesBottomBarWhenPushed = YES;

        
    }else if(indexPath.row == 6){
        
        vc = [MessageModelViewController CreateFromStoryboardWithName:@"Main"];
        vc.hidesBottomBarWhenPushed = YES;

    }
    if (vc != nil) {
        [self.navigationController pushViewController:vc animated:YES];
    }
}
#pragma mark --UICollectionViewDelegateFlowLayout
//定义每个UICollectionView 的大小
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(kScreenWidth/4-10, kScreenWidth/4-10);
}
//定义每个UICollectionView 的 margin
-(UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    return UIEdgeInsetsMake(5, 5, 5, 5);
}

#pragma mark - private method

- (void)searchprogram{
    
}


@end
