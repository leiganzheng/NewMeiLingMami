//
//  MemberGroup.m
//  MeiLing
//
//  Created by leiganzheng on 16/9/7.
//  Copyright © 2016年 karashock. All rights reserved.
//

#import "MemberGroup.h"

@implementation MemberGroup
-(MemberGroup *)initWithName:(NSString *)name andDetail:(NSString *)detail andContacts:(NSMutableArray *)contacts{
    if (self=[super init]) {
        self.name=name;
        self.detail=detail;
        self.contacts=contacts;
    }
    return self;
}

+(MemberGroup *)initWithName:(NSString *)name andDetail:(NSString *)detail andContacts:(NSMutableArray *)contacts{
    MemberGroup *group1=[[MemberGroup alloc]initWithName:name andDetail:detail andContacts:contacts];
    return group1;
}
@end
