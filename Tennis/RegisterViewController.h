//
//  RegisterViewController.h
//  Tennis
//
//  Created by oliver on 1/25/15.
//  Copyright (c) 2015 oliver. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseViewController.h"

@interface RegisterViewController : BaseViewController
- (IBAction)submit:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *userName;
@property (weak, nonatomic) IBOutlet UITextField *password1;
@property (weak, nonatomic) IBOutlet UITextField *password2;

- (IBAction)manChecked:(id)sender ;
- (IBAction)womanChecked:(id)sender;

@property (nonatomic,strong) NSString *sex;
@property (weak, nonatomic) IBOutlet UIButton *btnMan;
@property (weak, nonatomic) IBOutlet UIButton *btnWoman;

@end
