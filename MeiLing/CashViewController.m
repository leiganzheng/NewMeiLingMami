//
//  CashViewController.m
//  MeiLing
//
//  Created by leiganzheng on 16/9/5.
//  Copyright © 2016年 karashock. All rights reserved.
//

#import "CashViewController.h"
#import "Define.h"
#import "Tool.h"

@interface CashViewController ()
@property (weak, nonatomic) IBOutlet UITableView *customTable;
@property (strong,nonatomic) NSArray *data;
@property (strong,nonatomic) NSArray *subData;
@end

@implementation CashViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"新增现金券";
    self.data = @[@"券名称:",@"金 额:",@"员工服务:",@"有效期:",@"自定义:"];
    self.subData = @[@"请输入券名称",@"¥输入金额",@"",@"",@"请输入有效期"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 6;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 44;
}
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 40;
}
-(UIView* )tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    UIButton *rightButton = [[UIButton alloc]initWithFrame:CGRectMake(0,0,150,40)];
    [rightButton setTitle:@"现金券的使用在原价上减免金额" forState:UIControlStateNormal];
    [rightButton setTitleColor:kThemeColor forState:UIControlStateNormal];
    [rightButton setImage:[UIImage imageNamed:@"提示"] forState:UIControlStateNormal];
    return  rightButton;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row !=6) {
        static NSString * showUserInfoCellIdentifier = @"cell";
        UITableViewCell * cell = [self.customTable dequeueReusableCellWithIdentifier:showUserInfoCellIdentifier];
        if (cell == nil)
        {
            // Create a cell to display an ingredient.
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                          reuseIdentifier:showUserInfoCellIdentifier];
        }
        
        // Configure the cell.
        UILabel *title = (UILabel*)[cell viewWithTag:100];
        title.text = self.data[indexPath.row];
        
        UITextField *f = (UITextField *)[cell viewWithTag:101];
        f.placeholder = self.subData[indexPath.row];
        
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
        }
        
        // Configure the cell.
        UILabel *title = (UILabel*)[cell viewWithTag:100];
        title.text = self.data[indexPath.row];
        
        UITextField *f = (UITextField *)[cell viewWithTag:101];
        f.placeholder = self.subData[indexPath.row];
        
        [[Tool sharedInstance] addLine:cell withColor:kThemeColor];
        return cell;

    }
    
}

@end
