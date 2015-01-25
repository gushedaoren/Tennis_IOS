//
//  BaseViewController.h
//  Tennis
//
//  Created by oliver on 1/25/15.
//  Copyright (c) 2015 oliver. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AFNetworking/AFNetworking.h>
#import "Config.h"

@interface BaseViewController : UIViewController
@property(nonatomic,strong) AFHTTPRequestOperationManager *httpManager;

-(void)showMessage:(NSString *) title msg:(NSString *) message;

-(void)handleResult:(NSObject *) resultObject;

-(void)onError:(NSObject *) resultObject;


/*
 
  self.httpManager GET:hostname a parameters:<#(id)#> success:<#^(AFHTTPRequestOperation *operation, id responseObject)success#> failure:<#^(AFHTTPRequestOperation *operation, NSError *error)failure#>
 
*/
-(void)requestNetwork:(NSString*)action params:(NSDictionary*)params;

@end
