//
//  AppointmentMViewController.m
//  MeiLing
//
//  Created by leiganzheng on 16/9/5.
//  Copyright © 2016年 karashock. All rights reserved.
//

#import "AppointmentMViewController.h"
#import "Define.h"
#import "UIResponder+StoryBoard.h"
#import "MakeAppointViewController.h"
#import "Tool.h"

typedef enum {
    kAppoint = 0,
    kSZhong,
    kXZhong,
    kCancel,
} OrderType;

@interface AppointmentMViewController ()
@property (weak, nonatomic) IBOutlet UITableView *customTable;
@property (assign, nonatomic) OrderType orderType;
@end

@implementation AppointmentMViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.orderType = kAppoint;
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
    if (indexPath.row == 0 || indexPath.row == 1) {
        return 44;
    }
    return 110;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) {
        static NSString * showUserInfoCellIdentifier = @"Cell1";
        UITableViewCell * cell = [self.customTable dequeueReusableCellWithIdentifier:showUserInfoCellIdentifier];
        if (cell == nil)
        {
            // Create a cell to display an ingredient.
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                          reuseIdentifier:showUserInfoCellIdentifier];
        }
        UIButton *btn = (UIButton *)[cell viewWithTag:100];
        [btn addTarget:self action:@selector(makeAppoint) forControlEvents:UIControlEventTouchUpInside];
        [[Tool sharedInstance] addLine:cell withColor:kThemeColor];
         return cell;
    }else if (indexPath.row == 1){
        static NSString * showUserInfoCellIdentifier = @"Cell2";
        UITableViewCell * cell = [self.customTable dequeueReusableCellWithIdentifier:showUserInfoCellIdentifier];
        if (cell == nil)
        {
            // Create a cell to display an ingredient.
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                          reuseIdentifier:showUserInfoCellIdentifier];
        }
        UIButton *btn = (UIButton *)[cell viewWithTag:100];
        [btn addTarget:self action:@selector(appoint) forControlEvents:UIControlEventTouchUpInside];
        
        UIButton *btn1 = (UIButton *)[cell viewWithTag:101];
        [btn1 addTarget:self action:@selector(shangzhong) forControlEvents:UIControlEventTouchUpInside];
        
        UIButton *btn2 = (UIButton *)[cell viewWithTag:102];
        [btn2 addTarget:self action:@selector(xiazhong) forControlEvents:UIControlEventTouchUpInside];
        
        UIButton *btn3 = (UIButton *)[cell viewWithTag:103];
        [btn3 addTarget:self action:@selector(cancelAppoint) forControlEvents:UIControlEventTouchUpInside];
       
        switch (self.orderType) {
            case 0:
                [btn setTitleColor:kCyColorFromRGB(216, 128, 100) forState:UIControlStateNormal];
                [btn1 setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
                [btn2 setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
                [btn3 setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
                break;
            case 1:
                [btn setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
                [btn1 setTitleColor:kCyColorFromRGB(216, 128, 100) forState:UIControlStateNormal];
                [btn2 setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
                [btn3 setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];

                break;
            case 2:
                [btn setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
                [btn1 setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
                [btn2 setTitleColor:kCyColorFromRGB(216, 128, 100) forState:UIControlStateNormal];
                [btn3 setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];

                break;
            case 3:
                [btn setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
                [btn1 setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
                [btn2 setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
                [btn3 setTitleColor:kCyColorFromRGB(216, 128, 100) forState:UIControlStateNormal];

                break;
            default:
                break;
        }
        [[Tool sharedInstance] addLine:cell withColor:kThemeColor];
         return cell;
    }else{
        static NSString * showUserInfoCellIdentifier = @"Cell3";
        UITableViewCell * cell = [self.customTable dequeueReusableCellWithIdentifier:showUserInfoCellIdentifier];
        if (cell == nil)
        {
            // Create a cell to display an ingredient.
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                          reuseIdentifier:showUserInfoCellIdentifier];
        }
        UIButton *btn = (UIButton *)[cell viewWithTag:100];
        
        UIButton *btn1 = (UIButton *)[cell viewWithTag:101];
        switch (self.orderType) {
            case 0:
                btn.hidden =btn.hidden = YES;
                
                break;
            case 1:
                btn.hidden = NO;
                 [btn1 setTitle:@"点击上钟"  forState:UIControlStateNormal];
                
                break;
            case 2:
                btn.hidden = YES;
                [btn1 setTitle:@"下钟完成"  forState:UIControlStateNormal];
                
                break;
            case 3:
                btn.hidden = YES;
                [btn1 setTitle:@"查看详情"  forState:UIControlStateNormal];
                
                break;
            default:
                break;
        }
        [[Tool sharedInstance] comfingViewMask:btn1];
        [[Tool sharedInstance] comfingViewMask:btn];
      [[Tool sharedInstance] addLine:cell withColor:kThemeColor];
        return cell;
    }
    
}
- (void)makeAppoint{
    UIViewController *vc = [MakeAppointViewController CreateFromStoryboardWithName:@"Main"];
    vc.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:vc animated:YES];
}
- (void)appoint{
    self.orderType = kAppoint;
    [self.customTable reloadData];
}
- (void)shangzhong{
    self.orderType = kSZhong;
     [self.customTable reloadData];
}
- (void)xiazhong{
    self.orderType = kXZhong;
     [self.customTable reloadData];
}
- (void)cancelAppoint{
    self.orderType = kCancel;
     [self.customTable reloadData];
}

@end
