//
//  ViewController.m
//  DemoNavigationBar
//
//  Created by zhaoliang on 16/8/16.
//  Copyright © 2016年 liangzhimy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *button =  [UIButton buttonWithType:UIButtonTypeCustom];
    [button setImage:[UIImage imageNamed:@"image.png"] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonButonPressed:)forControlEvents:UIControlEventTouchUpInside];
    [button setFrame:CGRectMake(0, 0, 60, 31)];
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(3, 5, 50, 20)];
    [label setFont:[UIFont fontWithName:@"Arial-BoldMT" size:13]];
    [label setText:@"abcdefg"];
    label.textAlignment = UITextAlignmentCenter;
    [label setTextColor:[UIColor whiteColor]];
    [label setBackgroundColor:[UIColor clearColor]];
    [button addSubview:label];
    UIBarButtonItem *barButton = [[UIBarButtonItem alloc] initWithCustomView:button];

    self.navigationItem.leftBarButtonItem = barButton;
    
    [self rightButton]; 
    
//    self.navigationItem.rightBarButtonItem = nil;
//    self.navigationItem.rightBarButtonItem = nil;
//    self.navigationItem.rightBarButtonItem.enabled = NO;

//    self.navigationItem.rightBarButtonItem.enabled = false;
}

- (void)rightButton {
    UIButton *button =  [UIButton buttonWithType:UIButtonTypeCustom];
    [button setImage:[UIImage imageNamed:@"image.png"] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonButonPressed:)forControlEvents:UIControlEventTouchUpInside];
    [button setFrame:CGRectMake(0, 0, 50, 31)];
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(3, 5, 50, 20)];
    [label setFont:[UIFont fontWithName:@"Arial-BoldMT" size:13]];
    [label setText:@"abcdefg"];
    label.textAlignment = UITextAlignmentCenter;
    [label setTextColor:[UIColor whiteColor]];
    [label setBackgroundColor:[UIColor clearColor]];
    [button addSubview:label];
    UIBarButtonItem *barButton = [[UIBarButtonItem alloc] initWithCustomView:button];
    self.navigationItem.rightBarButtonItem = barButton;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)buttonButonPressed:(id)sender {
    NSLog(@"BUTTON PRESSED "); 
}

@end
