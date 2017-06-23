//
//  AdvertInfo.m
//  NewsReader
//
//  Created by hejinbo on 15/7/7.
//  Copyright (c) 2015年 MyCos. All rights reserved.
//

#import "AdvertInfo.h"

@implementation AdvertInfo

+ (instancetype)infoFromDict:(NSDictionary *)dict
{
    AdvertInfo *info = [[AdvertInfo alloc] init];
    
    info.ID = [dict objectForKey:@"id"];
    info.name = [dict objectForKey:@"name"];
    info.imageUrl = [dict objectForKey:@"imageurl"];
    info.linkUrl = [dict objectForKey:@"linkurl"];
    
    return info;
}

@end
