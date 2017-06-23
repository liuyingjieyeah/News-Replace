//
//  FxLogin.m
//  NewsReader
//
//  Created by hejinbo on 15/7/9.
//  Copyright (c) 2015年 MyCos. All rights reserved.
//

#import "FxLogin.h"
#import "UserInfo.h"

@implementation FxLogin

- (void)parseSuccess:(NSDictionary *)dict jsonString:jsonString
{
    NSDictionary *dictData = [dict objectForKey:NetData];
    UserInfo *info = [UserInfo infoFromDict:dictData];
    
    [_delegate opSuccess:info];
}

@end
