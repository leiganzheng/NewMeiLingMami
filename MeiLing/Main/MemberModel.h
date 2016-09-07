//
//  MemberModel.h
//  MeiLing
//
//  Created by leiganzheng on 16/9/7.
//  Copyright © 2016年 karashock. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MemberModel : NSObject
@property (nonatomic,copy) NSString *firstName;
#pragma mark 名
@property (nonatomic,copy) NSString *lastName;
#pragma mark 手机号码
@property (nonatomic,copy) NSString *phoneNumber;

#pragma mark 带参数的构造函数
-(MemberModel *)initWithFirstName:(NSString *)firstName andLastName:(NSString *)lastName andPhoneNumber:(NSString *)phoneNumber;

#pragma mark 取得姓名
-(NSString *)getName;

#pragma mark 带参数的静态对象初始化方法
+(MemberModel *)initWithFirstName:(NSString *)firstName andLastName:(NSString *)lastName andPhoneNumber:(NSString *)phoneNumber;
@end
