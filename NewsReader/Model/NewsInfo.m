//
//  NewsInfo.m
//  NewsReader
//
//  Created by hejinbo on 15/7/7.
//  Copyright (c) 2015年 MyCos. All rights reserved.
//

#import "NewsInfo.h"

@implementation NewsInfo

+ (instancetype)infoFromDict:(NSDictionary *)dict
{
    NewsInfo *info = [[NewsInfo alloc] init];
    
    info.ID = [dict objectForKey:@"id"];
    info.name = [dict objectForKey:@"name"];
    info.iconUrl = [dict objectForKey:@"iconurl"];
    info.contentUrl = [dict objectForKey:@"contenturl"];
    info.desc = [dict objectForKey:@"desc"];
    return info;
}

@end
