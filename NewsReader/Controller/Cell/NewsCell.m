//
//  NewsCell.m
//  NewsReader
//
//  Created by hejinbo on 15/7/7.
//  Copyright (c) 2015年 MyCos. All rights reserved.
//

#import "NewsCell.h"
#import "NewsInfo.h"
#import "FxDownload.h"

@implementation NewsCell

- (void)initCell
{
    [super initCell];
    
    //注册：接受通知
    RegisterNotify(NofifyNewsIcon, @selector(downloadIcon:));
}

- (void)dealloc
{
    RemoveNofify;
}

- (void)setCellData:(NewsInfo *)info
{
    [super setCellData:info];
    
    _descLabel.numberOfLines = 2;
    _descLabel.text = info.desc;
    
    //开启下载图片-异步
    [[FxDownload download] setNewsIcon:info imageView:_imageView];
}


//接收到通知，去更新UI
- (void)downloadIcon:(NSNotification *)notification
{
    NSDictionary *dict = [notification object];
    NewsInfo *info = [dict objectForKey:@"info"];
    
    if ([info.ID isEqualToString:self.cellInfo.ID]) {
        UIImage *image = [dict objectForKey:@"data"];
        _imageView.image = image;
    }
}

@end
