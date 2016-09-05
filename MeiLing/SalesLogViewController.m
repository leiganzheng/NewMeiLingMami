//
//  SalesLogViewController.m
//  MeiLing
//
//  Created by leiganzheng on 16/9/5.
//  Copyright © 2016年 karashock. All rights reserved.
//

#import "SalesLogViewController.h"
#import "Tool.h"
#import "Define.h"

@interface SalesLogViewController ()
@property (weak, nonatomic) IBOutlet UITableView *customTable;
@property (strong,nonatomic) NSArray *titles;
@end

@implementation SalesLogViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.title = @"销售日志";
    self.titles = @[@"",@"演示门店:",@"生  美:",@"项  目:",@"消  耗:",@"订  单:",@""];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 7;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 44;
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 0.5;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{

        if (indexPath.row == 0) {
            static NSString * showUserInfoCellIdentifier = @"cell";
            UITableViewCell * cell = [self.customTable dequeueReusableCellWithIdentifier:showUserInfoCellIdentifier];
            if (cell == nil)
            {
                // Create a cell to display an ingredient.
                cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                              reuseIdentifier:showUserInfoCellIdentifier];
            }
            [[Tool sharedInstance] addLine:cell withColor:kThemeColor];
            return cell;
        }else if(indexPath.row == 6){
            static NSString * showUserInfoCellIdentifier = @"cell3";
            UITableViewCell * cell = [self.customTable dequeueReusableCellWithIdentifier:showUserInfoCellIdentifier];
            if (cell == nil)
            {
                // Create a cell to display an ingredient.
                cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                              reuseIdentifier:showUserInfoCellIdentifier];
            }
            UIButton *l = (UIButton *)[cell viewWithTag:100];
            l.layer.masksToBounds = YES;
            l.layer.cornerRadius = 5;
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
            UILabel *l = (UILabel *)[cell viewWithTag:100];
            l.text = self.titles[indexPath.row];
            [[Tool sharedInstance] addLine:cell withColor:kThemeColor];
            return cell;
            
        }

        
}


@end
