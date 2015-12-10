//
//  LocationDetailViewController.m
//  One Year
//
//  Created by Alex King on 12/9/15.
//  Copyright © 2015 tits. All rights reserved.
//

#import "Location.h"

#import "LocationDetailViewController.h"

@interface LocationDetailViewController ()

@property (weak, nonatomic) IBOutlet UINavigationBar *navigationBar;

@property (weak, nonatomic) Location *location;

@end

@implementation LocationDetailViewController

- (instancetype)initWithLocation:(Location *)location {
    if (self = [super initWithNibName:@"LocationDetailView" bundle:nil]) {
        _location = location;
    }
    return self;
}

- (void)viewDidLoad {
    UIBarButtonItem *doneButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(doneAction)];
    UINavigationItem *navItem = [[UINavigationItem alloc] initWithTitle:self.location.locationName];
    navItem.rightBarButtonItem = doneButton;
    [self.navigationBar setItems:@[navItem]];
}

- (void)doneAction {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
