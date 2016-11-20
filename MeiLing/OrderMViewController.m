//
//  OrderMViewController.m
//  MeiLing
//
//  Created by leiganzheng on 16/9/3.
//  Copyright © 2016年 karashock. All rights reserved.
//

#import "OrderMViewController.h"
#import "Define.h"
#import "MakeAppointViewController.h"
#import "UIResponder+StoryBoard.h"

@interface OrderMViewController ()
@property (weak, nonatomic) IBOutlet UITableView *customTable;

@end

@implementation OrderMViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.title = @"订单信息";
    UIButton *rightButton = [[UIButton alloc]initWithFrame:CGRectMake(0,0,40,40)];
//    [rightButton setImage:[UIImage imageNamed:@"加"] forState:UIControlStateNormal];
    [rightButton setTitle:@"预约" forState:UIControlStateNormal];
    [rightButton addTarget:self action:@selector(appoint) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.rightBarButtonItem= [[UIBarButtonItem alloc] initWithCustomView:rightButton];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 110;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * showUserInfoCellIdentifier = @"Cell";
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
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
        return 40.0f;
}

-(UIView* )tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    UIButton *rightButton = [[UIButton alloc]initWithFrame:CGRectMake(0,0,kScreenWidth,40)];
    [rightButton setTitle:@"共21条记录" forState:UIControlStateNormal];
    [rightButton setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
    return  rightButton;
}
//- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
//{
//    
//    return @"共21条记录";
//    
//}
- (void)appoint{
    [self.navigationController pushViewController:[MakeAppointViewController CreateFromStoryboardWithName:@"Main"] animated:YES];

}
@end
