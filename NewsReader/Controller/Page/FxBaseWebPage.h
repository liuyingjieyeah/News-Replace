//
//  FxBaseWebPage.h
//  FxHejinbo
//
//  Created by hejinbo on 15/5/15.
//  Copyright (c) 2015年 MyCos. All rights reserved.
//

#import "FxBaseNavPage.h"

@interface FxBaseWebPage : FxBaseNavPage {
    IBOutlet UIWebView  *_webView;
}

@property(nonatomic, strong) NSString   *urlString;

- (void)loadHtml;

@end
