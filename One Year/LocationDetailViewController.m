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

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

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
    UIImage *image = [UIImage imageNamed:self.location.imageName];
    [self.imageView setImage:image];
}

- (IBAction)doneAction:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
