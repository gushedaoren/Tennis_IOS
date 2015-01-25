//
//  BaseViewController.m
//  Tennis
//
//  Created by oliver on 1/25/15.
//  Copyright (c) 2015 oliver. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)viewWillAppear:(BOOL)animated{
    self.httpManager =[AFHTTPRequestOperationManager manager];  //初始化网络操作对象
   
    
    

}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


-(void)showMessage:(NSString *) title msg:(NSString *) message
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title
                                                    message:message
                                                   delegate:self
                                          cancelButtonTitle:@"确定"
                                          otherButtonTitles:@"取消", nil];
    [alert show];
    
}
-(void)handleResult:(NSObject  *)resultObject{
    
}

-(void)onError:(NSObject *)resultObject{
    
}

-(void)requestNetwork:(NSString *)action params:(NSDictionary*)params{
    
    NSString *url=[hostname stringByAppendingString:action];
    [self.httpManager GET:url parameters:params success:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        dispatch_async(dispatch_get_main_queue(), ^{
            
            
            NSLog(@"result: %@",responseObject);
            
            
            [self handleResult:responseObject];
        
        
        
        });
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        
        [self showMessage:@"提示" msg:@"网络异常"];
        
    }];
}

@end
