//
//  MyNavigationBarViewController.m
//  DemoNavigationBar
//
//  Created by zhaoliang on 16/8/16.
//  Copyright © 2016年 liangzhimy. All rights reserved.
//

#import "MyNavigationBarViewController.h"
#import "MyNavigationBar.h"
@interface MyNavigationBarViewController ()

@end

@implementation MyNavigationBarViewController

- (id)initWithRootViewController:(UIViewController *)rootViewController {
    self = [super initWithNavigationBarClass:[MyNavigationBar class] toolbarClass:nil];
    if (self) {
//        [self initialize];
        self.viewControllers = @[rootViewController];
    }
    return self;
}

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

@end
