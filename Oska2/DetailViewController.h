//
//  DetailViewController.h
//  Oska2
//
//  Created by Neru on 22/02/2013.
//  Copyright (c) 2013 Neru. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FirstViewController.h"

@interface DetailViewController : UIViewController
{
    UILabel *selectedCountryLabel;
    NSString *selectedCountryString;
}

@property (nonatomic, retain) NSString *selectedCountryString;

@end
