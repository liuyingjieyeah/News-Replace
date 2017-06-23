//
//  FxStatis.h
//  FxHejinbo
//
//  Created by hejinbo on 15/6/10.
//  Copyright (c) 2015年 MyCos. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FxStatis : NSObject

+ (void)setup;

+ (void)intoPage:(NSString *)pageName;
+ (void)outPage:(NSString *)pageName;

+ (void)event:(NSString *)event
        value:(NSString *)value;

@end

