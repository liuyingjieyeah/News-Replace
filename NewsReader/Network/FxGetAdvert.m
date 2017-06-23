//
//  FxGetAdvert.m
//  NewsReader
//
//  Created by hejinbo on 15/7/7.
//  Copyright (c) 2015年 MyCos. All rights reserved.
//

#import "FxGetAdvert.h"
#import "AdvertInfo.h"

@implementation FxGetAdvert

- (void)parseSuccess:(NSDictionary *)dict jsonString:jsonString
{
    NSDictionary *dictData = [dict objectForKey:NetData];
    AdvertInfo *advert = [AdvertInfo infoFromDict:dictData];
    
    [_delegate opSuccess:advert];
}

@end
