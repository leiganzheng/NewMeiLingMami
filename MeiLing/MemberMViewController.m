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
#import "MemberModel.h"
#import "MemberGroup.h"

@interface MemberMViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *customTable;
@property (strong,nonatomic) NSMutableArray *data;

@end

@implementation MemberMViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.automaticallyAdjustsScrollViewInsets = NO;
    UIButton *rightButton = [[UIButton alloc]initWithFrame:CGRectMake(0,0,40,40)];
    [rightButton setImage:[UIImage imageNamed:@"加"] forState:UIControlStateNormal];
    [rightButton addTarget:self action:@selector(add) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.rightBarButtonItem= [[UIBarButtonItem alloc] initWithCustomView:rightButton];
    
    [self  initData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return self.data.count;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    MemberGroup *group=self.data[section];
    return group.contacts.count;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 120;
}
-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    MemberGroup *group=self.data[section];
    return group.name;
}
-(NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView{

    NSMutableArray *toBeReturned = [[NSMutableArray alloc]init];
    [toBeReturned addObject:[NSString stringWithFormat:@"%c",'#']];
    for(char c = 'A';c<='Z';c++){
        [toBeReturned addObject:[NSString stringWithFormat:@"%c",c]];
    }
    
    return toBeReturned;
}
#pragma mark 返回每组尾部说明

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        static NSString * showUserInfoCellIdentifier = @"cell1";
        UITableViewCell * cell = [self.customTable dequeueReusableCellWithIdentifier:showUserInfoCellIdentifier];
        if (cell == nil)
        {
            // Create a cell to display an ingredient.
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                          reuseIdentifier:showUserInfoCellIdentifier];
        }
        for (UIView *v in cell.subviews) {
            if ([v isKindOfClass:[UIButton class]]) {
                [[Tool sharedInstance] comfingView:v];
            }
        }
         return cell;
    }else{
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

}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
     [self.navigationController pushViewController:[CustomInfoViewController CreateFromStoryboardWithName:@"Main"] animated:YES];
}
#pragma mark - private method
-(void)initData{
    self.data =[[NSMutableArray alloc]init];
    
    MemberModel *contact=[MemberModel initWithFirstName:@"default" andLastName:@"" andPhoneNumber:@""];
    MemberGroup *group=[MemberGroup initWithName:@"" andDetail:@"With names beginning with C" andContacts:[NSMutableArray arrayWithObjects:contact, nil]];
    [self.data addObject:group];
    
     MemberModel *contact1=[MemberModel initWithFirstName:@"Cui" andLastName:@"Kenshin" andPhoneNumber:@"18500131234"];
    MemberModel *contact2=[MemberModel initWithFirstName:@"Cui" andLastName:@"Tom" andPhoneNumber:@"18500131237"];
    MemberGroup *group1=[MemberGroup initWithName:@"C" andDetail:@"With names beginning with C" andContacts:[NSMutableArray arrayWithObjects:contact1,contact2, nil]];
    [self.data addObject:group1];
    
    
    
    MemberModel *contact3=[MemberModel initWithFirstName:@"Lee" andLastName:@"Terry" andPhoneNumber:@"18500131238"];
    MemberModel *contact4=[MemberModel initWithFirstName:@"Lee" andLastName:@"Jack" andPhoneNumber:@"18500131239"];
    MemberModel *contact5=[MemberModel initWithFirstName:@"Lee" andLastName:@"Rose" andPhoneNumber:@"18500131240"];
    MemberGroup *group2=[MemberGroup initWithName:@"L" andDetail:@"With names beginning with L" andContacts:[NSMutableArray arrayWithObjects:contact3,contact4,contact5, nil]];
    [self.data addObject:group2];
    
    
    
    MemberModel *contact6=[MemberModel initWithFirstName:@"Sun" andLastName:@"Kaoru" andPhoneNumber:@"18500131235"];
    MemberModel *contact7=[MemberModel initWithFirstName:@"Sun" andLastName:@"Rosa" andPhoneNumber:@"18500131236"];
    
    MemberGroup *group3=[MemberGroup initWithName:@"S" andDetail:@"With names beginning with S" andContacts:[NSMutableArray arrayWithObjects:contact6,contact7, nil]];
    [self.data addObject:group3];
    
    
    MemberModel *contact8=[MemberModel initWithFirstName:@"Wang" andLastName:@"Stephone" andPhoneNumber:@"18500131241"];
    MemberModel *contact9=[MemberModel initWithFirstName:@"Wang" andLastName:@"Lucy" andPhoneNumber:@"18500131242"];
    MemberModel *contact10=[MemberModel initWithFirstName:@"Wang" andLastName:@"Lily" andPhoneNumber:@"18500131243"];
    MemberModel *contact11=[MemberModel initWithFirstName:@"Wang" andLastName:@"Emily" andPhoneNumber:@"18500131244"];
    MemberModel *contact12=[MemberModel initWithFirstName:@"Wang" andLastName:@"Andy" andPhoneNumber:@"18500131245"];
    MemberGroup *group4=[MemberGroup initWithName:@"W" andDetail:@"With names beginning with W" andContacts:[NSMutableArray arrayWithObjects:contact8,contact9,contact10,contact11,contact12, nil]];
    [self.data addObject:group4];
    
    
    MemberModel *contact13=[MemberModel initWithFirstName:@"Zhang" andLastName:@"Joy" andPhoneNumber:@"18500131246"];
    MemberModel *contact14=[MemberModel initWithFirstName:@"Zhang" andLastName:@"Vivan" andPhoneNumber:@"18500131247"];
    MemberModel *contact15=[MemberModel initWithFirstName:@"Zhang" andLastName:@"Joyse" andPhoneNumber:@"18500131248"];
    MemberGroup *group5=[MemberGroup initWithName:@"Z" andDetail:@"With names beginning with Z" andContacts:[NSMutableArray arrayWithObjects:contact13,contact14,contact15, nil]];
    [self.data addObject:group5];
    
}
- (void)add{
    [self.navigationController pushViewController:[CustomInfoViewController CreateFromStoryboardWithName:@"Main"] animated:YES];
}



@end
