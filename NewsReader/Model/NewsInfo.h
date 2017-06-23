//
//  NewsInfo.h
//  NewsReader
//
//  Created by hejinbo on 15/7/7.
//  Copyright (c) 2015年 MyCos. All rights reserved.
//

#import "BaseInfo.h"

@interface NewsInfo : BaseInfo

@property(nonatomic, strong) NSString    *desc;
@property(nonatomic, strong) NSString    *iconUrl;
@property(nonatomic, strong) NSString    *contentUrl;

@end
