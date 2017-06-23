//
//  BaseInfo.h
//  NewsReader
//
//  Created by hejinbo on 15/7/7.
//  Copyright (c) 2015年 MyCos. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseInfo : NSObject

@property(nonatomic, strong) NSString    *ID;
@property(nonatomic, strong) NSString    *name;

+ (instancetype)infoFromDict:(NSDictionary *)dict;
+ (NSArray *)arrayFromDict:(NSDictionary *)dict;
+ (NSArray *)arrayFromArray:(NSArray *)array;

@end
