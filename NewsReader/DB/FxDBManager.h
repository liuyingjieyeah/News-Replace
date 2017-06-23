//
//  FxDBManager.h
//  FxHejinbo
//
//  Created by hejinbo on 15/5/13.
//  Copyright (c) 2015年 MyCos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NewsInfo.h"
#import "ColumnInfo.h"

@interface FxDBManager : NSObject

+ (void)saveColumns:(NSDictionary *)dictInfo;
+ (NSArray *)fetchColumns:(NSString *)pageID;

+ (void)saveNews:(NSDictionary *)dictInfo;
+ (NSArray *)fetchNews:(NSString *)columnID;

@end
