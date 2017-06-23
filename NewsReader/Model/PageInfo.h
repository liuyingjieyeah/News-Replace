//
//  PageInfo.h
//  FxHejinbo
//
//  Created by hejinbo on 15/5/20.
//  Copyright (c) 2015年 MyCos. All rights reserved.
//

#import "BaseInfo.h"

@interface PageInfo : BaseInfo

@property(nonatomic, strong) NSString    *image;
@property(nonatomic, strong) NSString    *selectImage;
@property(nonatomic, assign) BOOL        unLoad;

+ (NSArray *)pageControllers;

@end
