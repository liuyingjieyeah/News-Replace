//
//  WeatherPage.h
//  NewsReader
//
//  Created by hejinbo on 15/7/26.
//  Copyright (c) 2015年 MyCos. All rights reserved.
//

#import "FxBasePage.h"
#import <CoreLocation/CoreLocation.h>

@interface WeatherPage : FxBasePage <CLLocationManagerDelegate> {
    IBOutlet UILabel    *_titleLabel;
    IBOutlet UILabel    *_dayLabel;
    IBOutlet UILabel    *_temperatureLabel;
    IBOutlet UILabel    *_currentTempLabel;
    IBOutlet UILabel    *_weaterLabel;
    IBOutlet UILabel    *_windLabel;
    IBOutlet UILabel    *_humiLabel;
    IBOutlet UIImageView*_imageView;
    
    CLLocationManager   *_manager;
    NSString            *_currentCity;
}

@end
