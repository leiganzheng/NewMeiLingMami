//
//  MemberMViewController.m
//  MeiLing
//
//  Created by leiganzheng on 16/9/4.
//  Copyright © 2016年 karashock. All rights reserved.
//

#import "MemberMViewController.h"
#import "CustomInfoViewController.h"
#import "UIResponder+StoryBoard.h"
#import "Define.h"
#import "Tool.h"
#import "SearchViewController.h"

@interface MemberMViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *customTable;
@property (strong,nonatomic) NSArray *data;
@property (strong,nonatomic) NSMutableArray *toBeReturned;

@end

@implementation MemberMViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *rightButton = [[UIButton alloc]initWithFrame:CGRectMake(0,0,40,40)];
    [rightButton setImage:[UIImage imageNamed:@"加"] forState:UIControlStateNormal];
    [rightButton addTarget:self action:@selector(add) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.rightBarButtonItem= [[UIBarButtonItem alloc] initWithCustomView:rightButton];
    self.data = @[@"A",@"B",@"C"];
    
    self.toBeReturned = [[NSMutableArray alloc]init];
    
    for(char c = 'A';c<='Z';c++){
        [_toBeReturned addObject:[NSString stringWithFormat:@"%c",c]];
    }
    
    SearchViewController *sear = [SearchViewController CreateFromStoryboardWithName:@"Main"];
    sear.view.frame = CGRectMake(0, 0, kScreenWidth, 200);
    self.customTable.tableHeaderView = sear.view;
    
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
    return 120;
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

- (NSInteger)tableView:(UITableView *)tableView sectionForSectionIndexTitle:(NSString *)title atIndex:(NSInteger)index {
    
    NSString *key = [_toBeReturned objectAtIndex:index];
    if (key == UITableViewIndexSearch) {
        [self.customTable setContentOffset:CGPointZero animated:NO];
        return NSNotFound;
    }
    
    return index;
}
- (NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView

{
    
    return _toBeReturned;
    
}

//- (NSInteger)tableView:(UITableView *)tableView sectionForSectionIndexTitle:(NSString *)title atIndex:(NSInteger)index
//
//{
//    
//    NSInteger count = 0;
//    
//    for(NSString *character in self.data)
//        
//    {
//        
//        if([character isEqualToString:title])
//            
//        {
//            
//            return count;
//        
//        }
//        
//        count ++;
//        
//    }
//    
//    return 0;
//    
//}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section

{
    
    if([self.data count]==0)
        
    {
        
        return @"";
        
    }
    
        return [self.data objectAtIndex:section];
    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
     [self.navigationController pushViewController:[CustomInfoViewController CreateFromStoryboardWithName:@"Main"] animated:YES];
}
#pragma mark - private method
- (void)add{
    [self.navigationController pushViewController:[CustomInfoViewController CreateFromStoryboardWithName:@"Main"] animated:YES];
}



@end
