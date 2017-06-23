//
//  UserInfo.m
//  NewsReader
//
//  Created by hejinbo on 15/7/9.
//  Copyright (c) 2015年 MyCos. All rights reserved.
//

#import "UserInfo.h"

@implementation UserInfo

+ (UserInfo *)infoFromDict:(NSDictionary *)dict
{
    UserInfo *info = [[UserInfo alloc] init];
    
    info.ID = [dict objectForKey:@"id"];
    info.name = [dict objectForKey:@"name"];
    info.token = [dict objectForKey:@"token"];
    
    return info;
}

@end
