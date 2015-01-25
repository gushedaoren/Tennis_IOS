//
//  UpdateUserInfoViewController.h
//  Tennis
//
//  Created by oliver on 1/25/15.
//  Copyright (c) 2015 oliver. All rights reserved.
//

#import "BaseViewController.h"

@interface UpdateUserInfoViewController : BaseViewController
@property (weak, nonatomic) IBOutlet UITextField *text1;
@property (weak, nonatomic) IBOutlet UITextField *text2;
@property (weak, nonatomic) IBOutlet UITextField *text3;
@property (weak, nonatomic) IBOutlet UITextField *text4;
@property (weak, nonatomic) IBOutlet UITextField *text5;
@property (weak, nonatomic) IBOutlet UITextField *text6;
- (IBAction)submit:(id)sender;

@end
