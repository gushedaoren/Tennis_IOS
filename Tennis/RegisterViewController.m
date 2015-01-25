//
//  RegisterViewController.m
//  Tennis
//
//  Created by oliver on 1/25/15.
//  Copyright (c) 2015 oliver. All rights reserved.
//

#import "RegisterViewController.h"

@interface RegisterViewController ()



@end

@implementation RegisterViewController
- (IBAction)manChecked:(id)sender {
    self.sex=@"man";
    [self.btnMan setImage:[UIImage imageNamed:@"checkbox_on"] forState:UIControlStateNormal];
    [self.btnWoman setImage:[UIImage imageNamed:@"checkbox_off"] forState:UIControlStateNormal];
}
- (IBAction)womanChecked:(id)sender {
    self.sex=@"woman";
    
    [self.btnMan setImage:[UIImage imageNamed:@"checkbox_off"] forState:UIControlStateNormal];
    [self.btnWoman setImage:[UIImage imageNamed:@"checkbox_on"] forState:UIControlStateNormal];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.sex=@"man";
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


-(void)handleResult:(NSObject *)resultObject{
    
    NSDictionary *json=(NSDictionary*)resultObject;
    
    NSString *statusCode=[json objectForKey:@"statusCode"];
    NSString *message=[json objectForKey:@"message"];
    
    if([statusCode isEqualToString:@"0"]){
        [self showMessage:@"提示" msg:message];
    }else{
        [self showMessage:@"提示" msg:message];
    }
    
}

- (IBAction)submit:(id)sender {
    
    NSString *account=self.userName.text;
    
    NSString *pass1=self.password1.text;
    NSString *pass2=self.password2.text;
    
    
    if([pass1 isEqualToString:pass2]){
        NSDictionary *params=@{@"account": account, @"password": pass1,@"sex":self.sex};
        
        [self requestNetwork:@"register" params:params];
        
        
    }else{
        [self showMessage:@"提示" msg:@"两次密码输入不一致"];
    }
    
    
}
@end
