//
//  FxDownload.m
//  NewsReader
//
//  Created by hejinbo on 15/7/22.
//  Copyright (c) 2015年 MyCos. All rights reserved.
//

#import "FxDownload.h"
#import "FxFileUtility.h"


@interface FxDownload ()
@property(nonatomic, strong) NSOperationQueue   *iconQueue;
@end


@implementation FxDownload

+ (FxDownload *)download
{
    static FxDownload *s_download = nil;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        s_download = [[FxDownload alloc] init];
    });
    
    return s_download;
}

- (id)init
{
    self = [super init];
    if (self) {
        self.dictIcons = [[NSMutableDictionary alloc] init];
        
        //最多并发4线程
        _iconQueue = [[NSOperationQueue alloc] init];
        [_iconQueue setMaxConcurrentOperationCount:4];
    }
    
    return self;
}


#pragma mark - Download NewsIcon

- (void)cancelDownload
{
    [_iconQueue cancelAllOperations];
}

- (void)setNewsIcon:(NewsInfo *)newsInfo
          imageView:(UIImageView *)imageView
{
    NSString *file = [NSString stringWithFormat:NewsIconPrex, newsInfo.ID];
    UIImage *image = nil;
    
    file = [FxGlobal getCacheImage:file];

    //判断是否本地已存在
    if ([FxFileUtility isFileExist:file]) {
        image = [UIImage imageWithContentsOfFile:file];
        imageView.image = image;
    }
    else {
        //给默认图标然后在子线程下载
        imageView.image = [UIImage imageNamed:@"NewsDefault.png"];
        [self downloadNewsIcon:newsInfo];
    }
}

- (void)downloadNewsIcon:(NewsInfo *)info
{
    //开启子线程
    NSInvocationOperation *op = [[NSInvocationOperation alloc] initWithTarget:self selector:@selector(downNewsIconThread:) object:info];
    
    [_iconQueue addOperation:op];
}

- (void)downNewsIconThread:(NewsInfo *)info
{
    NSString *file = [NSString stringWithFormat:NewsIconPrex, info.ID];
    NSURL *url = [NSURL URLWithString:info.iconUrl];
    
    file = [FxGlobal getCacheImage:file];
    
    if (url != nil) {
        NSData *data = [NSData dataWithContentsOfURL:url];
        UIImage *image = [UIImage imageWithData:data];
        NSDictionary *dictInfo = @{
                                   @"info": info,
                                   @"data": image
                                   };
        //注册通知
        SEL sel = @selector(notifyNewsIconDownload:);
        
        //存到本地
        [data writeToFile:file atomically:YES];
        [self performSelectorOnMainThread:sel
                               withObject:dictInfo
                            waitUntilDone:NO];
    }
}

- (void)notifyNewsIconDownload:(NSDictionary *)dict
{
    //下载完成后发送通知-->更新视图
    SendNotify(NofifyNewsIcon, dict)
}

@end
