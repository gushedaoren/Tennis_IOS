//
//  LoginViewController.h
//  Tennis
//
//  Created by oliver on 1/18/15.
//  Copyright (c) 2015 oliver. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface LoginViewController : UIViewController



@property (weak, nonatomic) IBOutlet UITextView *edit_user;


@property (weak, nonatomic) IBOutlet UITextView *edit_password;

@property (weak, nonatomic) IBOutlet UIButton *btn_login;


@property (weak, nonatomic) IBOutlet UIButton *btn_check;

@property (weak, nonatomic) IBOutlet UIButton *btn_register;


- (IBAction)remenberPasswordCheckChanged:(id)sender;
- (IBAction)actionLogin:(id)sender;


@end
