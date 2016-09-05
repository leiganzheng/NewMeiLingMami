//
//  MakeAppointViewController.m
//  MeiLing
//
//  Created by leiganzheng on 16/9/5.
//  Copyright © 2016年 karashock. All rights reserved.
//

#import "MakeAppointViewController.h"

@interface MakeAppointViewController ()
@property (weak, nonatomic) IBOutlet UITableView *customTable;
@property (strong,nonatomic) NSArray *data;
@end

@implementation MakeAppointViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.automaticallyAdjustsScrollViewInsets  = NO;
    self.data = @[@[@"",@"",@""],@[@""],@[@"预约美容师"],@[@"＊预约时间"],@[@"＊支付方式"],@[@"优惠卷"],@[@""]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section == 0) {
        return 3;
    }
    return 1;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 7;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section ==  1) {
        return 110;
    }else if(indexPath.section == 6){
        return 150;
    }
    return 44;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        if (indexPath.row == 0) {
            static NSString * showUserInfoCellIdentifier = @"cell1";
            UITableViewCell * cell = [self.customTable dequeueReusableCellWithIdentifier:showUserInfoCellIdentifier];
            if (cell == nil)
            {
                // Create a cell to display an ingredient.
                cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                              reuseIdentifier:showUserInfoCellIdentifier];
            }
            return cell;

        }else if(indexPath.row == 1){
            static NSString * showUserInfoCellIdentifier = @"cell2";
            UITableViewCell * cell = [self.customTable dequeueReusableCellWithIdentifier:showUserInfoCellIdentifier];
            if (cell == nil)
            {
                // Create a cell to display an ingredient.
                cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                              reuseIdentifier:showUserInfoCellIdentifier];
            }
            return cell;

        }else{
            static NSString * showUserInfoCellIdentifier = @"cell3";
            UITableViewCell * cell = [self.customTable dequeueReusableCellWithIdentifier:showUserInfoCellIdentifier];
            if (cell == nil)
            {
                // Create a cell to display an ingredient.
                cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                              reuseIdentifier:showUserInfoCellIdentifier];
            }
            return cell;
 
        }
        
    }else if (indexPath.section == 1){
        static NSString * showUserInfoCellIdentifier = @"cell4";
        UITableViewCell * cell = [self.customTable dequeueReusableCellWithIdentifier:showUserInfoCellIdentifier];
        if (cell == nil)
        {
            // Create a cell to display an ingredient.
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                          reuseIdentifier:showUserInfoCellIdentifier];
        }
        return cell;
    }else if (indexPath.section == 6){
        static NSString * showUserInfoCellIdentifier = @"cell5";
        UITableViewCell * cell = [self.customTable dequeueReusableCellWithIdentifier:showUserInfoCellIdentifier];
        if (cell == nil)
        {
            // Create a cell to display an ingredient.
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                          reuseIdentifier:showUserInfoCellIdentifier];
        }
        return cell;

    }
    else{
        static NSString * showUserInfoCellIdentifier = @"cell";
        UITableViewCell * cell = [self.customTable dequeueReusableCellWithIdentifier:showUserInfoCellIdentifier];
        if (cell == nil)
        {
            // Create a cell to display an ingredient.
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                          reuseIdentifier:showUserInfoCellIdentifier];
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        }
         cell.textLabel.text = self.data[indexPath.section][indexPath.row];
        return cell;
    }
    
    
    
}

@end
