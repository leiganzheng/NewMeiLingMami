//
//  AccountInfoViewController.m
//  MeiLing
//
//  Created by leiganzheng on 16/9/5.
//  Copyright © 2016年 karashock. All rights reserved.
//

#import "AccountInfoViewController.h"
#import "Define.h"
#import "Tool.h"

@interface AccountInfoViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *customTable;
@property (strong ,nonatomic) NSArray *data;
@end

@implementation AccountInfoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.data = @[@"卡号",@"",@"现金余额",@"产品余额",@"项目余额",@"疗程余额"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.data.count;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row==1) {
        return 110;
    }
    return 44;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) {
        static NSString * showUserInfoCellIdentifier = @"Cell";
        UITableViewCell * cell = [self.customTable dequeueReusableCellWithIdentifier:showUserInfoCellIdentifier];
        if (cell == nil)
        {
            // Create a cell to display an ingredient.
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                          reuseIdentifier:showUserInfoCellIdentifier];
        }
        
        // Configure the cell.
        cell.textLabel.text = self.data[indexPath.row];
//        UIButton *rightButton = [[UIButton alloc]initWithFrame:CGRectMake(kScreenWidth-80,5,60,30)];
//        [rightButton setTitle:@"请选择" forState:UIControlStateNormal];
//        [rightButton setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
//        [rightButton addTarget:self action:@selector(upPush) forControlEvents:UIControlEventTouchUpInside];
        [[Tool sharedInstance] addLine:cell withColor:kThemeColor];
        return cell;

    }else if(indexPath.row == 1) {
        static NSString * showUserInfoCellIdentifier = @"cell";
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
        static NSString * showUserInfoCellIdentifier = @"Cell";
        UITableViewCell * cell = [self.customTable dequeueReusableCellWithIdentifier:showUserInfoCellIdentifier];
        if (cell == nil)
        {
            // Create a cell to display an ingredient.
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                          reuseIdentifier:showUserInfoCellIdentifier];
        }
        
        // Configure the cell.
        cell.textLabel.text = self.data[indexPath.row];
         [[Tool sharedInstance] addLine:cell withColor:kThemeColor];
        return cell;

    }
    
}
- (void)upPush{
    
}


@end
