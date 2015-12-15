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
    Location *markerLocation = marker.userData;
    if (markerLocation.imageName) {
        LocationDetailViewController *detailViewController = [[LocationDetailViewController alloc] initWithLocation:markerLocation];
        [self presentViewController:detailViewController animated:YES completion:nil];
    }
}

- (NSArray *)locations {
    NSMutableArray *locationArray = [NSMutableArray array];
    
    Location *location1 = [Location new];
    location1.lat = 37.50766;
    location1.lon = -122.263816;
    location1.locationName = @"Olga's Apartment";
    location1.locationSnippet = @"Cat Fortress";
    location1.imageName = @"cats.jpg";
    [locationArray addObject:location1];
    
    Location *location2 = [Location new];
    location2.lat = 38.040526;
    location2.lon = -122.829981;
    location2.locationName = @"Point Reyes";
    location2.locationSnippet = @"Sky Camp";
    location2.imageName = @"skyCamp.jpg";
    [locationArray addObject:location2];
    
    Location *location3 = [Location new];
    location3.lat = 37.604595;
    location3.lon = -122.457767;
    location3.locationName = @"Sweeney Ridge";
    location3.locationSnippet = @"Plane-watching location";
    location3.imageName = @"sweeneyRidge.jpg";
    [locationArray addObject:location3];
    
    Location *location4 = [Location new];
    location4.lat = 37.756252;
    location4.lon = -119.593232;
    location4.locationName = @"Yosemite Falls";
    location4.locationSnippet = @"Yosemite Point";
    location4.imageName = @"yosemite.jpg";
    [locationArray addObject:location4];
    
    Location *location5 = [Location new];
    location5.lat = 39.274932;
    location5.lon = -120.121041;
    location5.locationName = @"Northstar";
    location5.locationSnippet = @"Not at Welk Resorts";
    location5.imageName = @"northstar.jpg";
    [locationArray addObject:location5];
    
    Location *location6 = [Location new];
    location6.lat = 38.247680;
    location6.lon = -120.3017467;
    location6.locationName = @"Arnold";
    location6.locationSnippet = @"New Year's 2014-15"; ///////////////////
    location6.imageName = @"arnold.jpg";
    [locationArray addObject:location6];
    
    Location *location7 = [Location new];
    location7.lat = 37.778271;
    location7.lon = -122.408472;
    location7.locationName = @"The Box SF";
    location7.locationSnippet = @"Remind Holiday Party '14";
    location7.imageName = @"holiday2014.jpeg";
    [locationArray addObject:location7];
    
    Location *location8 = [Location new];
    location8.lat = 34.118536;
    location8.lon = -118.300446;
    location8.locationName = @"Griffith Observatory";
    location8.locationSnippet = @"Existential Crisis Center";
    location8.imageName = @"griffith.jpeg";
    [locationArray addObject:location8];
    
    Location *location9 = [Location new];
    location9.lat = 37.797979;
    location9.lon = -122.413595;
    location9.locationName = @"Huey's House";
    location9.locationSnippet = @"Never Again";
    location9.imageName = @"huey.jpg";
    [locationArray addObject:location9];
    
    Location *location10 = [Location new];
    location10.lat = 37.037204;
    location10.lon = -121.838143;
    location10.locationName = @"Buzzard Lagoon";
    location10.locationSnippet = @"Best Bed & Breakfast Ever";
    location10.imageName = @"d+k.jpg";
    [locationArray addObject:location10];
    
    Location *location11 = [Location new];
    location11.lat = 36.609665;
    location11.lon = -121.895365;
    location11.locationName = @"San Carlos Beach";
    location11.locationSnippet = @"First Open Water Dive";
    location11.imageName = @"monterey.jpg";
    [locationArray addObject:location11];
    
    Location *location12 = [Location new];
    location12.lat = 36.251539;
    location12.lon = -121.689956;
    location12.locationName = @"Sykes Hot Springs";
    location12.locationSnippet = @"Sulfur Never Smelled So Good";
    location12.imageName = @"sikes.jpeg";
    [locationArray addObject:location12];
    
    Location *location13 = [Location new];
    location13.lat = 37.172922;
    location13.lon = -122.222157;
    location13.locationName = @"Skyline To The Sea Trail";
    location13.locationSnippet = @"Our Longest Hike Yet";
    location13.imageName = @"sToS.jpg";
    [locationArray addObject:location13];
    
    Location *location14 = [Location new];
    location14.lat = 39.004400;
    location14.lon = -122.709378;
    location14.locationName = @"Clear Lake";
    location14.locationSnippet = @"4th of July 2015";
    location14.imageName = @"4thJuly.jpg";
    [locationArray addObject:location14];
    
    Location *location15 = [Location new];
    location15.lat = 39.432000;
    location15.lon = -121.134052;
    location15.locationName = @"Bullard's Bar";
    location15.locationSnippet = @"I Got High";
    location15.imageName = @"high.jpg";
    [locationArray addObject:location15];
    
    Location *location16 = [Location new];
    location16.lat = 39.195706;
    location16.lon = -120.236226;
    location16.locationName = @"Squaw Valley";
    location16.locationSnippet = @"Biscuit's Big Adventure";
    location16.imageName = @"biscuit.jpg";
    [locationArray addObject:location16];
    
    Location *location17 = [Location new];
    location17.lat = 20.759923;
    location17.lon = -156.458128;
    location17.locationName = @"Maui Condo";
    location17.locationSnippet = @"Sunset Land";
    location17.imageName = @"condo.jpg";
    [locationArray addObject:location17];
    
    Location *location18 = [Location new];
    location18.lat = 20.875217;
    location18.lon = -156.679892;
    location18.locationName = @"Ululani's Lahaina";
    location18.locationSnippet = @"Best Stuff Ever";
    location18.imageName = @"ululanis.jpg";
    [locationArray addObject:location18];
    
    Location *location19 = [Location new];
    location19.lat = 20.713958;
    location19.lon = -156.249817;
    location19.locationName = @"Haleakala Crater";
    location19.locationSnippet = @"So good you have to (try to) see it twice";
    location19.imageName = @"haleakala.jpg";
    [locationArray addObject:location19];
    
    Location *location20 = [Location new];
    location20.lat = 20.8614917;
    location20.lon = -156.163047;
    location20.locationName = @"Road to Hana";
    location20.locationSnippet = @"Weird stuff happens here";
    location20.imageName = @"roadToHana.jpg";
    [locationArray addObject:location20];
    
    Location *location21 = [Location new];
    location21.lat = 37.929007;
    location21.lon = -122.577724;
    location21.locationName = @"Mt. Tam";
    location21.locationSnippet = @"Phil's Last Stand";
    location21.imageName = @"MTTam.JPG";
    [locationArray addObject:location21];
    
    Location *location22 = [Location new];
    location22.lat = 37.332535;
    location22.lon = -121.901400;
    location22.locationName = @"The Shark Tank";
    location22.locationSnippet = @"Bleed Some Teal";
    location22.imageName = @"sharks.jpg";
    [locationArray addObject:location22];
    
    Location *location23 = [Location new];
    location23.lat = 20.633716;
    location23.lon = -156.498485;
    location23.locationName = @"Molokini";
    location23.locationSnippet = @"Crazy Awesome Scuba";
    location23.imageName = @"scuba.JPG";
    [locationArray addObject:location23];
    
    return locationArray;
}

@end
