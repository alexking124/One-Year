//
//  ViewController.m
//  One Year
//
//  Created by Alex King on 12/9/15.
//  Copyright © 2015 tits. All rights reserved.
//

#import "Location.h"
#import "LocationDetailViewController.h"

#import "ViewController.h"
@import GoogleMaps;

@interface ViewController ()

@end

@implementation ViewController {
    GMSMapView *mapView_;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:37.50766
                                                            longitude:-122.263816
                                                                 zoom:10];
    mapView_ = [GMSMapView mapWithFrame:CGRectZero camera:camera];
    mapView_.myLocationEnabled = YES;
    mapView_.delegate = self;
    self.view = mapView_;
    
    // Creates a marker in the center of the map.
    for (Location *location in [self locations]) {
        GMSMarker *marker = [[GMSMarker alloc] init];
        marker.position = CLLocationCoordinate2DMake(location.lat, location.lon);
        marker.title = location.locationName;
        marker.snippet = location.locationSnippet;
        marker.userData = location;
        marker.map = mapView_;
    }
}

- (void)mapView:(GMSMapView *)mapView didTapInfoWindowOfMarker:(GMSMarker *)marker {
    LocationDetailViewController *detailViewController = [[LocationDetailViewController alloc] initWithLocation:marker.userData];
    [self presentViewController:detailViewController animated:YES completion:nil];
}

- (NSArray *)locations {
    NSMutableArray *locationArray = [NSMutableArray array];
    
    Location *location1 = [Location new];
    location1.lat = 37.50766;
    location1.lon = -122.263816;
    location1.locationName = @"Olga's Apartment";
    location1.locationSnippet = @"Cat Fortress";
    [locationArray addObject:location1];
    
    Location *location2 = [Location new];
    location2.lat = 38.040526;
    location2.lon = -122.829981;
    location2.locationName = @"Point Reyes";
    location2.locationSnippet = @"Sky Camp";
    [locationArray addObject:location2];
    
    Location *location3 = [Location new];
    location3.lat = 37.604595;
    location3.lon = -122.457767;
    location3.locationName = @"Sweeney Ridge";
    location3.locationSnippet = @"Plane-watching location";
    [locationArray addObject:location3];
    
    Location *location4 = [Location new];
    location4.lat = 37.756252;
    location4.lon = -119.593232;
    location4.locationName = @"Yosemite Falls";
    location4.locationSnippet = @"Yosemite Point";
    [locationArray addObject:location4];
    
    Location *location5 = [Location new];
    location5.lat = 39.274932;
    location5.lon = -120.121041;
    location5.locationName = @"Northstar";
    location5.locationSnippet = @"";
    [locationArray addObject:location5];
    
    return locationArray;
}

@end
