//
//  MemberGroup.h
//  MeiLing
//
//  Created by leiganzheng on 16/9/7.
//  Copyright © 2016年 karashock. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MemberModel.h"

@interface MemberGroup : NSObject
#pragma mark 组名
@property (nonatomic,copy) NSString *name;

#pragma mark 分组描述
@property (nonatomic,copy) NSString *detail;

#pragma mark 联系人
@property (nonatomic,strong) NSMutableArray *contacts;

#pragma mark 带参数个构造函数
-(MemberGroup *)initWithName:(NSString *)name andDetail:(NSString *)detail andContacts:(NSMutableArray *)contacts;

#pragma mark 静态初始化方法
+(MemberGroup *)initWithName:(NSString *)name andDetail:(NSString *)detail andContacts:(NSMutableArray *)contacts;
@end
