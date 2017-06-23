//
//  AdvertPage.h
//  NewsReader
//
//  Created by hejinbo on 15/7/8.
//  Copyright (c) 2015年 MyCos. All rights reserved.
//

#import "FxBasePage.h"

@interface AdvertPage : FxBasePage{
    IBOutlet UIImageView    *_imageView;
}

+ (BOOL)canShowAdvertPage;
+ (void)showAdvertPage;

@end
