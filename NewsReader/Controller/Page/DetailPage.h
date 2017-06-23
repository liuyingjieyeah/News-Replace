//
//  DetailPage.h
//  NewsReader
//
//  Created by hejinbo on 15/7/7.
//  Copyright (c) 2015年 MyCos. All rights reserved.
//

#import "FxBaseWebPage.h"
#import "NewsInfo.h"

@interface DetailPage : FxBaseWebPage

@property(nonatomic, strong) NewsInfo   *newsInfo;

@end
