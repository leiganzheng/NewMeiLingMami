//
//  MeViewController.m
//  MeiLing
//
//  Created by leiganzheng on 16/9/5.
//  Copyright © 2016年 karashock. All rights reserved.
//

#import "MeViewController.h"
#import "Tool.h"
#import "Define.h"
#import "UIResponder+StoryBoard.h"
#import "WalletViewController.h"

@interface MeViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *customTable;

@end

@implementation MeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"我";
//    self.automaticallyAdjustsScrollViewInsets = NO;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section == 0) {
        return 1;
    }
    return 6;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section == 0) {
        return 100;
    }
    return 44;
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 0.5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0 ) {
        static NSString * showUserInfoCellIdentifier = @"cell1";
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
        if (indexPath.row==0) {
            static  NSString * showUserInfoCellIdentifier = @"cell2";
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
            UIButton *btn = (UIButton *)[cell viewWithTag:100];
            [btn addTarget:self action:@selector(walletVC) forControlEvents:UIControlEventTouchUpInside];
            UIButton *btn1 = (UIButton *)[cell viewWithTag:101];
            UIButton *btn2 = (UIButton *)[cell viewWithTag:102];
            [[Tool sharedInstance] comfingView:btn1];
            [[Tool sharedInstance] comfingView:btn];
             [[Tool sharedInstance] comfingView:btn2];
            
            return cell;

        }else if (indexPath.row==1){
            static  NSString * showUserInfoCellIdentifier = @"cell3";
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
            
            
            return cell;

        }else if (indexPath.row==2){
            static  NSString * showUserInfoCellIdentifier = @"cell4";
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
            
            
            return cell;

        }else if (indexPath.row==3){
            static  NSString * showUserInfoCellIdentifier = @"cell5";
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
            
            
            return cell;

        }else if (indexPath.row==4){
            static  NSString * showUserInfoCellIdentifier = @"cell6";
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
            
            
            return cell;

        }else{
            static  NSString * showUserInfoCellIdentifier = @"cell7";
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
            UIButton *btn = (UIButton *)[cell viewWithTag:100];
            UIButton *btn1 = (UIButton *)[cell viewWithTag:101];
            UIButton *btn2 = (UIButton *)[cell viewWithTag:102];
            UIButton *btn3 = (UIButton *)[cell viewWithTag:103];
            [[Tool sharedInstance] comfingView:btn1];
            [[Tool sharedInstance] comfingView:btn];
            [[Tool sharedInstance] comfingView:btn2];
            [[Tool sharedInstance] comfingView:btn3];
            
            return cell;

        }
        
    }
    
    
}
#pragma mark - private method
- (void)walletVC{
    [self.navigationController pushViewController:[WalletViewController CreateFromStoryboardWithName:@"Main"] animated:YES];
}

@end
