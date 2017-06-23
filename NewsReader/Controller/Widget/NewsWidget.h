//
//  NewsWidget.h
//  NewsReader
//
//  Created by hejinbo on 15/7/7.
//  Copyright (c) 2015年 MyCos. All rights reserved.
//

#import "FxTableWidget.h"
#import "ColumnInfo.h"

@interface NewsWidget : FxTableWidget {
    BOOL        _hasNextPage;
    NSInteger   _pageIndex;
}

@property(nonatomic, strong) ColumnInfo   *columnInfo;

@end
