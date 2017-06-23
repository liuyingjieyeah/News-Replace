//
//  FxGetColumn.m
//  NewsReader
//
//  Created by hejinbo on 15/7/7.
//  Copyright (c) 2015年 MyCos. All rights reserved.
//

#import "FxGetColumn.h"
#import "ColumnInfo.h"
#import "FxDBManager.h"

@implementation FxGetColumn

- (void)parseSuccess:(NSDictionary *)dict jsonString:jsonString
{
    NSArray *infos = [ColumnInfo arrayFromDict:dict];
    [_delegate opSuccess:infos];
    
    NSString *pageId = [_opInfo objectForKey:@"body"];
    [FxDBManager saveColumns:@{@"pageid":pageId, @"json":jsonString}];
}

@end
