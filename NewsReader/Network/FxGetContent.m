//
//  FxGetContent.m
//  NewsReader
//
//  Created by hejinbo on 15/7/22.
//  Copyright (c) 2015年 MyCos. All rights reserved.
//

#import "FxGetContent.h"
#import "ContentInfo.h"

@implementation FxGetContent

- (void)parseData:(NSData *)data
{
    if (data.length <= 0) { //返回的长度为0，认为成功
        [self parseSuccess:nil jsonString:nil];
        return;
    }
    
    NSString *jsonString = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    NSMutableDictionary *dict = [FxJsonUtility jsonValueFromString:jsonString];
    NSString *articleID = [_opInfo objectForKey:@"aid"];
    
    NSDictionary *dictResult = [dict objectForKey:articleID];
    if (dictResult != nil) {
        [self parseSuccess:dictResult jsonString:jsonString ];
    }
    else {
        [self parseFail:jsonString];
    }
    
    _receiveData = nil;
}

//获取解析详情页Model

- (void)parseSuccess:(NSDictionary *)dict jsonString:jsonString
{
    ContentInfo *info = [ContentInfo infoFromDict:dict];
    
    [_delegate opSuccess:info];
}

@end
