//
//  Location.h
//  One Year
//
//  Created by Alex King on 12/9/15.
//  Copyright © 2015 tits. All rights reserved.
//

#import <Foundation/Foundation.h>
@import GoogleMaps;

@interface Location : NSObject

@property (assign, nonatomic) CLLocationDegrees lat;
@property (assign, nonatomic) CLLocationDegrees lon;
@property (copy, nonatomic) NSString *locationName;
@property (copy, nonatomic) NSString *locationSnippet;

@end
