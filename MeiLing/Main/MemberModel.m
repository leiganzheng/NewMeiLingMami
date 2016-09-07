//
//  MemberModel.m
//  MeiLing
//
//  Created by leiganzheng on 16/9/7.
//  Copyright © 2016年 karashock. All rights reserved.
//

#import "MemberModel.h"

@implementation MemberModel
-(MemberModel *)initWithFirstName:(NSString *)firstName andLastName:(NSString *)lastName andPhoneNumber:(NSString *)phoneNumber{
    if(self=[super init]){
        self.firstName=firstName;
        self.lastName=lastName;
        self.phoneNumber=phoneNumber;
    }
    return self;
}

-(NSString *)getName{
    return [NSString stringWithFormat:@"%@ %@",_lastName,_firstName];
}

+(MemberModel *)initWithFirstName:(NSString *)firstName andLastName:(NSString *)lastName andPhoneNumber:(NSString *)phoneNumber{
    MemberModel *contact1=[[MemberModel alloc]initWithFirstName:firstName andLastName:lastName andPhoneNumber:phoneNumber];
    return contact1;
}
@end
