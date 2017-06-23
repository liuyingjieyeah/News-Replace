//
//  ContentImageInfo.h
//  FxHejinbo
//
//  Created by hejinbo on 15/7/16.
//  Copyright (c) 2015年 MyCos. All rights reserved.
//

#import "BaseInfo.h"

/**
 *  详情页-图片-Model
 */

@interface ContentImageInfo : BaseInfo

@property(nonatomic, strong) NSString *ref;     //ID、引用
@property(nonatomic, strong) NSString *pixel;   //像素
@property(nonatomic, strong) NSString *alt;     //标题
@property(nonatomic, strong) NSString *src;     //来源、地址链接

@end
