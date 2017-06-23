//
//  FxGetChart.m
//  NewsReader
//
//  Created by hejinbo on 15/7/23.
//  Copyright (c) 2015年 MyCos. All rights reserved.
//

#import "FxGetChart.h"

@implementation FxGetChart

- (void)parseSuccess:(NSDictionary *)dict jsonString:jsonString
{
    [_delegate opSuccess:jsonString];
}

@end
