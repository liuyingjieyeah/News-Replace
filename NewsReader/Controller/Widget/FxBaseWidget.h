//
//  FxBaseWidget.h
//  NewsReader
//
//  Created by hejinbo on 15/7/7.
//  Copyright (c) 2015年 MyCos. All rights reserved.
//

#import "FxBaseController.h"

@interface FxBaseWidget : FxBaseController

@property(strong, nonatomic) NSMutableArray    *listData;

- (void)updateUI;
- (void)reloadData;
- (BOOL)isReloadLocalData;

@end
