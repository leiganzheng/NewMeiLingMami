//
//  RankingListViewController.m
//  MeiLing
//
//  Created by leiganzheng on 16/9/6.
//  Copyright © 2016年 karashock. All rights reserved.
//

#import "RankingListViewController.h"
#import "Tool.h"
#import "Define.h"

@interface RankingListViewController ()
@property (weak, nonatomic) IBOutlet UICollectionView *customCollectionView;
@property (strong,nonatomic) NSArray *data;
@property (strong,nonatomic) NSArray *images;
@end

@implementation RankingListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"排行榜";
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.data = @[@"项目排行榜",@"产品排行榜",@"顾客排行榜",@"顾问排行榜",@"美容师排行榜",@"门店PK"];
    self.images = @[@"项目排行榜",@"产品排行榜",@"顾客排行榜",@"顾问排行榜",@"美容师排行榜",@"门店PK"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark ---- UICollectionViewDataSource

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 6;
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *const cellId = @"collection";
    UICollectionViewCell *cell = [_customCollectionView dequeueReusableCellWithReuseIdentifier:cellId forIndexPath:indexPath];
    UIButton *btn = (UIButton *)[cell viewWithTag:100];
    [btn setImage:[UIImage imageNamed:self.images[indexPath.row]] forState:UIControlStateNormal];
    [btn setTitle:self.data[indexPath.row] forState:UIControlStateNormal];
    for (UIView *v in cell.contentView.subviews) {
        if ([v isKindOfClass:[UIView class]]) {
            v.layer.masksToBounds = YES;
            v.layer.cornerRadius = 5;
        }
    }
    return cell;
}



#pragma mark ---- UICollectionViewDelegateFlowLayout

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return (CGSize){kScreenWidth/2-10,kScreenWidth/2-10};
}


- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    return UIEdgeInsetsMake(5, 5, 5, 5);
}

@end
