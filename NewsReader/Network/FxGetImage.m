//
//  FxGetImage.m
//  FxHejinbo
//
//  Created by hejinbo on 15/7/8.
//  Copyright (c) 2015年 MyCos. All rights reserved.
//

#import "FxGetImage.h"

@implementation FxGetImage

- (void)parseData:(NSData *)data
{
    [_delegate opSuccessEx:data opinfo:_opInfo];
}

@end
