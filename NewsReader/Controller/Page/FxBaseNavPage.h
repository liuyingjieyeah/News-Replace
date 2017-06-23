//
//  FxBaseNavController.h
//  FxHejinbo
//
//  Created by hejinbo on 15/7/15.
//  Copyright (c) 2015年 MyCos. All rights reserved.
//

#import "FxBaseController.h"

@interface FxBaseNavPage : FxBaseController

@property(nonatomic, strong) NSString   *barBackgroudImage;

- (void)setNavigationItem:(NSString *)title
                 selector:(SEL)selector
                  isRight:(BOOL)isRight;

@end
