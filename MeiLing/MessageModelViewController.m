//
//  MessageModelViewController.m
//  MeiLing
//
//  Created by leiganzheng on 16/9/6.
//  Copyright © 2016年 karashock. All rights reserved.
//

#import "MessageModelViewController.h"

@interface MessageModelViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *customTable;
@end

@implementation MessageModelViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"信息模版";
    self.automaticallyAdjustsScrollViewInsets = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 3;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 150;
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
    return cell;
    
}


@end
