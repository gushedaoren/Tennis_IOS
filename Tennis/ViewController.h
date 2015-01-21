//
//  ViewController.h
//  Tennis
//
//  Created by oliver on 1/14/15.
//  Copyright (c) 2015 oliver. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property(readwrite,strong) IBOutlet UIImageView* imgLeft1;

@property(readwrite,strong) IBOutlet UIImageView* imgLeft2;


-(IBAction)tapHandler:(id)sender;


@end

