//
//  CountCardViewController.m
//  MeiLing
//
//  Created by leiganzheng on 16/9/6.
//  Copyright © 2016年 karashock. All rights reserved.
//

#import "CountCardViewController.h"

#import "Define.h"
#import "Tool.h"

@interface CountCardViewController ()
@property (weak, nonatomic) IBOutlet UITableView *customTable;
@property (strong,nonatomic) NSArray *data;
@property (strong,nonatomic) NSArray *subData;

@end

@implementation CountCardViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"新增计次卡";
    self.data = @[@"卡名称:",@"开卡金额:",@"卡前缀:",@"有效期:",@"自定义:",@"卡号事例:"];
    self.subData = @[@"请输入卡名称",@"请输入金额",@"输入赠送金额",@"",@"",@""];
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
    return 1;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 44;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
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
    
}


@end
