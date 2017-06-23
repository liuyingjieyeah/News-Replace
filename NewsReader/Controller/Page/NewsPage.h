//
//  NewsPage.h
//  NewsReader
//
//  Created by hejinbo on 15/7/7.
//  Copyright (c) 2015年 MyCos. All rights reserved.
//

#import "FxBaseNavPage.h"
#import "ColumnBarWidget.h"
#import "FxLandscapeTableView.h"

@interface NewsPage : FxBaseNavPage <ColumnBarDelegate> {
    IBOutlet UIView                 *_barBackView;
    IBOutlet FxLandscapeTableView   *_tableView;
    ColumnBarWidget                 *_barWidget;        //滑动条
}

@end
