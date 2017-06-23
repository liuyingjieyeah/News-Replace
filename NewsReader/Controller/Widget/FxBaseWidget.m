//
//  FxBaseWidget.m
//  NewsReader
//
//  Created by hejinbo on 15/7/7.
//  Copyright (c) 2015年 MyCos. All rights reserved.
//

#import "FxBaseWidget.h"

@implementation FxBaseWidget

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self reloadData];
}

- (void)updateUI
{
}

- (void)reloadData
{
    //有则取本地，无则网络加载对比是否有更新
    if (![self isReloadLocalData]) {
        [self requestServer];
    }
    else {
        [self requestServerOp];
        [self updateUI];
    }
}

- (BOOL)isReloadLocalData
{
    //判断本地是否有
    BOOL isReload = self.listData.count > 0;
    
    if (isReload) {
        [self updateUI];
    }
    
    return isReload;
}

- (void)requestServer
{
    //旋转加载状态
    [self showIndicator:LoadingTip autoHide:NO afterDelay:NO];
    [self requestServerOp];
}

- (void)requestServerOp
{
}

@end
