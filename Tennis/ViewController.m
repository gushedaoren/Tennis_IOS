//
//  ViewController.m
//  Tennis
//
//  Created by oliver on 1/14/15.
//  Copyright (c) 2015 oliver. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()




@end

@implementation ViewController
            
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
     NSLog(@"viewDidLoad");
    
    
    
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapHandler:)];
    
    
    [self.imgLeft2 addGestureRecognizer:tap];
   }

- (IBAction)tapHandler:(UITapGestureRecognizer *)recognizer {
    
    
    
         NSLog(@"you clicked me");


  
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
