//
//  CustomInfoViewController.m
//  MeiLing
//
//  Created by leiganzheng on 16/9/5.
//  Copyright © 2016年 karashock. All rights reserved.
//

#import "CustomInfoViewController.h"
#import "Tool.h"
#import "Define.h"
#import "UIResponder+StoryBoard.h"
#import "PrivateLifeViewController.h"
#import "PrivateTopicViewController.h"
#import "SpecialDateViewController.h"
#import "SalesLogViewController.h"
#import "AccountInfoViewController.h"
#import "OrderMViewController.h"
#import "CareDayLogViewController.h"

@interface CustomInfoViewController ()
@property (weak, nonatomic) IBOutlet UITableView *customTable;
@property (strong,nonatomic) NSArray *data;
@end

@implementation CustomInfoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title  = @"客户信息";
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.data = @[@[@"梁女士：136-xxx－xxx",@"上次服务时间：2016-08-09 21:09",@"近三个月：到店10次 上门2次",@""],@[@"账户信息",@"订单信息",@"护理日志",@"特殊日期",@"私密生活",@"私密话题",@"销售日志"]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section == 0) {
        return 4;
    }
    return 7;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 44;
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 0.5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0 && indexPath.row == 3) {
        static NSString * showUserInfoCellIdentifier = @"cell2";
        UITableViewCell * cell = [self.customTable dequeueReusableCellWithIdentifier:showUserInfoCellIdentifier];
        if (cell == nil)
        {
            // Create a cell to display an ingredient.
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                          reuseIdentifier:showUserInfoCellIdentifier];
        }
        
        // Configure the cell.
        [[Tool sharedInstance] addLine:cell withColor:kThemeColor];
        return cell;
    }else{
        static NSString * showUserInfoCellIdentifier = @"cell1";
        UITableViewCell * cell = [self.customTable dequeueReusableCellWithIdentifier:showUserInfoCellIdentifier];
        if (cell == nil)
        {
            // Create a cell to display an ingredient.
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                          reuseIdentifier:showUserInfoCellIdentifier];
            if (indexPath.section != 0) {
                cell.accessoryType =  UITableViewCellAccessoryDisclosureIndicator;
            }
        }
        
        // Configure the cell.
        if (indexPath.section != 0) {
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        }
        cell.textLabel.text = self.data[indexPath.section][indexPath.row];
        [[Tool sharedInstance] addLine:cell withColor:kThemeColor];
        return cell;
    }
   
    
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    UIViewController *vc;
    switch (indexPath.row) {
        case 0:
            vc = [AccountInfoViewController CreateFromStoryboardWithName:@"Main"];
            break;
        case 1:
            vc = [OrderMViewController CreateFromStoryboardWithName:@"Main"];
            break;
        case 2:
            vc = [CareDayLogViewController CreateFromStoryboardWithName:@"Main"];
            break;
        case 3:
            vc = [SpecialDateViewController CreateFromStoryboardWithName:@"Main"];
            break;
        case 4:
            vc = [PrivateLifeViewController CreateFromStoryboardWithName:@"Main"];
            break;
        case 5:
            vc = [PrivateTopicViewController CreateFromStoryboardWithName:@"Main"];
            break;
        case 6:
            vc = [SalesLogViewController CreateFromStoryboardWithName:@"Main"];
            break;
        default:
            break;
    }
    if (vc != nil) {
        [self.navigationController pushViewController:vc animated:YES];
    }
}

@end
