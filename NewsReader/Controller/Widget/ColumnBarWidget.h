//
//  ColumnBarWidget.h
//  NewsReader
//
//  Created by hejinbo on 15/7/7.
//  Copyright (c) 2015年 MyCos. All rights reserved.
//

#import "FxBaseWidget.h"
#import "FxButtonHelper.h"

@protocol ColumnBarDelegate;
@interface ColumnBarWidget : FxBaseWidget {
    IBOutlet UIScrollView   *_scrollView;
    FxButtonHelper          *_btnHelper;
}

@property(nonatomic, assign) NSInteger      pageIndex;
@property(nonatomic, assign) id<ColumnBarDelegate> delegate;

@end





@protocol ColumnBarDelegate <NSObject>

- (void)didSelect:(NSInteger)pageIndex;

@end

