//
//  MainPageViewController.h
//  PianoKids
//
//  Created by Valenti on 10/09/12.
//  Copyright (c) 2012 Valenti. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <iAd/iAd.h>

@interface MainPageViewController : UIViewController<ADBannerViewDelegate>
{
    ADBannerView    *bannerView;
    
    UIView          *boardView;
    
    UIButton        *button16;
    
    UIImageView     *imageView16;
    UIImageView     *imageView14;
    UIImageView     *imageView12;
    UIImageView     *imageView10;
    UIImageView     *imageView8;
    UIImageView     *imageView6;
    UIImageView     *imageView4;

}

@property (nonatomic,retain) IBOutlet ADBannerView    *bannerView;
@property (nonatomic,retain) IBOutlet UIView          *boardView;

@property (nonatomic,retain) IBOutlet UIButton        *button16;

@property (nonatomic,retain) IBOutlet UIImageView     *imageView16;
@property (nonatomic,retain) IBOutlet UIImageView     *imageView14;
@property (nonatomic,retain) IBOutlet UIImageView     *imageView12;
@property (nonatomic,retain) IBOutlet UIImageView     *imageView10;
@property (nonatomic,retain) IBOutlet UIImageView     *imageView8;
@property (nonatomic,retain) IBOutlet UIImageView     *imageView6;
@property (nonatomic,retain) IBOutlet UIImageView     *imageView4;


@end
