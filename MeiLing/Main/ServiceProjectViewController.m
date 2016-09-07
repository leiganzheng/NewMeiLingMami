//
//  ServiceProjectViewController.m
//  MeiLing
//
//  Created by leiganzheng on 16/9/5.
//  Copyright © 2016年 karashock. All rights reserved.
//

#import "ServiceProjectViewController.h"
#import "Define.h"
#import "AppointmentMViewController.h"
#import "UIResponder+StoryBoard.h"
#import "Tool.h"

@interface ServiceProjectViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *customTable;

@end

@implementation ServiceProjectViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"服务项目";
    UIButton *rightButton = [[UIButton alloc]initWithFrame:CGRectMake(0,0,30,30)];
    [rightButton setImage:[UIImage imageNamed:@"icon-搜索"] forState:UIControlStateNormal];
    self.navigationItem.rightBarButtonItem= [[UIBarButtonItem alloc] initWithCustomView:rightButton];

    
    self.automaticallyAdjustsScrollViewInsets  = NO;
    for (UIView *v in self.view.subviews) {
        if ([v isKindOfClass:[UIButton class]]) {
            v.layer.cornerRadius = 5;
            v.layer.masksToBounds = YES;
        }
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 4;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
}
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 40;
}
-(UIView* )tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    UIButton *rightButton = [[UIButton alloc]initWithFrame:CGRectMake(0,0,kScreenWidth,40)];
    [rightButton setTitle:@"共计：1000元" forState:UIControlStateNormal];
    rightButton.titleLabel.textAlignment = NSTextAlignmentRight;
    [rightButton setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
    return  rightButton;
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
    [[Tool sharedInstance] addLine:cell withColor:kThemeColor];
    return cell;
    
}
- (IBAction)makeOrder:(id)sender {
    [self.navigationController pushViewController:[AppointmentMViewController CreateFromStoryboardWithName:@"Main"] animated:YES];
}


@end
