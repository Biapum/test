//
//  MainPageViewController.m
//  PianoKids
//
//  Created by Valenti on 10/09/12.
//  Copyright (c) 2012 Valenti. All rights reserved.
//

#import "MainPageViewController.h"

@interface MainPageViewController ()
- (void)slideViewArrow:(UIView *)viewArrow withDistance:(CGFloat)distance andDelay:(float)delay andBuuton:(UIButton*)buttonPush;
@end

@implementation MainPageViewController
@synthesize bannerView,boardView;
@synthesize button16;

@synthesize imageView16,
            imageView14,
            imageView12,
            imageView10,
            imageView8,
            imageView6,
            imageView4;

-(void)dealloc{
    [button16 release];
    
    [imageView16 release];
    [imageView14 release];
    [imageView12 release];
    [imageView10 release];
    [imageView8 release];
    [imageView6 release];
    [imageView4 release];
    [boardView release];
    [bannerView release];
    [super dealloc];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.navigationController.navigationBar setHidden:YES];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationLandscapeRight);
}

#pragma mark - iAdsBanner

- (void)bannerViewDidLoadAd:(ADBannerView *)banner
{
    [bannerView setHidden:NO];
    [self.view bringSubviewToFront:bannerView];
    //    NSLog(@"recieve bannes iAds");
}

- (void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error{
    NSLog(@"iAds error %@",error);
    [bannerView setHidden:YES];
}


- (void)slideViewArrow:(UIView *)viewArrow withDistance:(CGFloat)distance andDelay:(float)delay andBuuton:(UIButton*)buttonPush
{
    CGRect posFinal= viewArrow.frame;
    posFinal.origin.y=posFinal.origin.y+distance;
    CGRect posInicial= viewArrow.frame;
    viewArrow.frame = posInicial;
    NSLog(@"holaaaaa");
    [UIView animateWithDuration:4.7 delay:delay options:0 animations:^{[viewArrow setFrame:posFinal];}
                     completion:nil];
    NSLog(@"Adeu");
}

@end
