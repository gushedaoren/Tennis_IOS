//
//  LoginViewController.m
//  Tennis
//
//  Created by oliver on 1/18/15.
//  Copyright (c) 2015 oliver. All rights reserved.
//

#import "LoginViewController.h"
#import <AFNetworking/AFNetworking.h>
#import "Config.h"

@interface LoginViewController ()





@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)remenberPasswordCheckChanged:(id)sender {
    
    self.btn_check=sender;
   
    
   
    if([self.btn_check tag]==1){
        [self.btn_check setImage:[UIImage imageNamed:@"checkbox_off"] forState:UIControlStateNormal];
        [self.btn_check setTag:0];
    }else{
        [self.btn_check setImage:[UIImage imageNamed:@"checkbox_on"] forState:UIControlStateNormal];
        [self.btn_check setTag:1];
    }
   
    
}





- (IBAction)actionLogin:(id)sender {
    
    NSString* user=self.edit_user.text;
    
    NSString* password=self.edit_password.text;
    
   
    NSLog(@"user:%@",user);
    
    NSLog(@"password:%@",password);
    
    
    

    
    
       NSDictionary *params = @{@"account": user, @"password": password};
       [self requestNetwork:@"login" params:params];
    
    }


-(void)handleResult:(NSObject  *)resultObject{
    
           NSDictionary *json=(NSDictionary*)resultObject;
    
            id statusCode=[json objectForKey:@"statusCode"];
    
            NSString *message=[json objectForKey:@"message"];
    
    
            if(statusCode!=0){
                [self showMessage:@"提示" msg:message];
            }else{
                [self showMessage:@"提示" msg:message];
            }
    
}


@end
