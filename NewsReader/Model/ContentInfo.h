//
//  ContentInfo.h
//  FxHejinbo
//
//  Created by hejinbo on 15/7/16.
//  Copyright (c) 2015年 MyCos. All rights reserved.
//

#import "BaseInfo.h"

/**
 *  详情页Model
 */

@interface ContentInfo : BaseInfo

@property(nonatomic, strong) NSString *title;
@property(nonatomic, strong) NSString *source;
@property(nonatomic, strong) NSString *ptime;
@property(nonatomic, strong) NSString *digest;
@property(nonatomic, strong) NSString *body;
@property(nonatomic, strong) NSString *ec;
@property(nonatomic, strong) NSString *sourceurl;
@property(nonatomic, strong) NSArray  *images;

@end
