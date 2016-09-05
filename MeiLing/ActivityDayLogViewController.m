//
//  ActivityDayLogViewController.m
//  MeiLing
//
//  Created by leiganzheng on 16/9/5.
//  Copyright © 2016年 karashock. All rights reserved.
//

#import "ActivityDayLogViewController.h"
#import "Define.h"
@interface ActivityDayLogViewController ()
@property (weak, nonatomic) IBOutlet UITableView *customTable;
@property (weak, nonatomic) IBOutlet UIButton *seletctBtn;
@property (weak, nonatomic) IBOutlet UIButton *saveBtn;
@property (weak, nonatomic) IBOutlet UITextView *textV;

@end

@implementation ActivityDayLogViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _seletctBtn.layer.cornerRadius = 5;
    _seletctBtn.layer.masksToBounds = YES;
    _saveBtn.layer.cornerRadius = 5;
    _saveBtn.layer.masksToBounds = YES;
    
    _textV.layer.borderColor = kThemeColor.CGColor;
    _textV.layer.borderWidth = 0.5;
    _textV.layer.cornerRadius = 5;
    _textV.layer.masksToBounds = YES;
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
    return 100;
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
     UIButton *btn = (UIButton *)[cell viewWithTag:101];
    btn.layer.masksToBounds = YES;
    btn.layer.cornerRadius = 5;

     UITextView *textV = (UITextView *)[cell viewWithTag:100];
    
    textV.layer.borderColor = kThemeColor.CGColor;
    textV.layer.borderWidth = 0.5;
    textV.layer.cornerRadius = 5;
    textV.layer.masksToBounds = YES;
    
    return cell;
    
}


@end
