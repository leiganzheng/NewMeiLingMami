//
//  Define.h
//
//  Created by leiganzheng on 14-8-13.
//  Copyright (c) 2014年 leiganzheng. All rights reserved.
//

/* 系统版本 */
#define SYSTEM_VERSION [[[UIDevice currentDevice] systemVersion] floatValue]
// screen size
#define kScreenHeight ([[UIScreen mainScreen] bounds].size.height)
#define kScreenWidth ([[UIScreen mainScreen] bounds].size.width)
// 颜色值
// rgb
#define kCyColorFromRGBA(r, g, b, a) [UIColor colorWithRed:((r) / 255.0f) green:((g) / 255.0f) blue:((b) / 255.0f) alpha:(a)]
#define kCyColorFromRGB(r, g, b) [UIColor colorWithRed:((r) / 255.0f) green:((g) / 255.0f) blue:((b) / 255.0f) alpha:(1.0f)]
// 背景颜色
#define kBgColor           [UIColor colorWithRed:(246 / 255.0f) green:(237 / 255.0f) blue:(222 / 255.0f) alpha:1.0f]
// 灰色颜色
#define kLightGrayColor           [UIColor colorWithRed:(245 / 255.0f) green:(245 / 255.0f) blue:(245 / 255.0f) alpha:1.0f]
// 主题色
#define kThemeColor        [UIColor colorWithRed:(175 / 255.0f) green:(154 / 255.0f) blue:(115 / 255.0f) alpha:1.0f]
// 本地存储信息
#define kGetUserSystemObject(key) [[NSUserDefaults standardUserDefaults] objectForKey:key]

#define kSaveUserSystemObject(key, value) \
[[NSUserDefaults standardUserDefaults] setObject:value forKey:key]; \
[[NSUserDefaults standardUserDefaults] synchronize]

#define kRemoveUserSystemObject(key) \
[[NSUserDefaults standardUserDefaults]removeObjectForKey:key]; \
[[NSUserDefaults standardUserDefaults] synchronize]

#define IsIOS7 ([[[[UIDevice currentDevice] systemVersion] substringToIndex:1] intValue]>=7)

#import "AppDelegate.h"
#define APPDELEGATE ((AppDelegate*)([[UIApplication sharedApplication] delegate]))


//app版本
#define kAppVersion  [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"]
// App 编译版本号
#define APP_VERSION_BUILD       [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleVersion"]
// KeyChain Keys
#define kUserName                @"username"
#define kPassword               @"password"
#define kAuthKey                 @"AuthKey"

typedef NS_ENUM(NSInteger, ListType) {
    //3。店长推荐、4。产品推广列表、5。仪器推广列表、6。家居产品、7。联系我们
    ManagerType = 3,
    ProductType = 4,
    EquimentType = 5,
    HouseholdType = 6
};