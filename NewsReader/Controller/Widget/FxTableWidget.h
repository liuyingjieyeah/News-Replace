//
//  FxTableWidget.h
//  NewsReader
//
//  Created by hejinbo on 15/7/7.
//  Copyright (c) 2015年 MyCos. All rights reserved.
//

#import "FxBaseWidget.h"

@interface FxTableWidget : FxBaseWidget {
    IBOutlet UITableView     *_tableView;
    CGFloat                 _cellHeight;
}

@property(nonatomic, strong) NSString   *cellIdentifier;
@property(nonatomic, assign) id         owner;

@end
