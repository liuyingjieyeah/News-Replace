//
//  FxGetNews.m
//  NewsReader
//
//  Created by hejinbo on 15/7/7.
//  Copyright (c) 2015年 MyCos. All rights reserved.
//

#import "FxGetNews.h"
#import "NewsInfo.h"
#import "FxDBManager.h"

@implementation FxGetNews

- (void)parseSuccess:(NSDictionary *)dict jsonString:jsonString
{
    NSArray *infos = [NewsInfo arrayFromDict:dict];
    [_delegate opSuccess:infos];
    
    NSString *columnID = [_opInfo objectForKey:@"body"];
    [FxDBManager saveNews:@{@"columnid":columnID,@"json":jsonString}];
}

@end
