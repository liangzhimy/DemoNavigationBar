//
//  MyNavigationBar.m
//  DemoNavigationBar
//
//  Created by zhaoliang on 16/8/16.
//  Copyright © 2016年 liangzhimy. All rights reserved.
//

#import "MyNavigationBar.h"
#import <QuartzCore/QuartzCore.h>

@interface MyNavigationBar ()
@property (strong, nonatomic) CAGradientLayer *bgLayer;
@end

@implementation MyNavigationBar

- (id)initWithCoder:(NSCoder *)aDecoder {
    
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self initialize];
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if (self) {
        [self initialize];
    }
    return self;
}

- (void)initialize {
  
}

- (CGSize)sizeThatFits:(CGSize)size
{
    CGSize navigationBarSize = [super sizeThatFits:size];
    return navigationBarSize;
}


- (void)layoutSubviews {
    [super layoutSubviews];
    
    self.clipsToBounds = NO;
    self.translucent = NO;
    CAGradientLayer *gradientLayer = [CAGradientLayer layer];
    self.bgLayer = gradientLayer;
    NSLog(@"bounds: %@", NSStringFromCGRect(self.bounds));
    gradientLayer.frame = self.bounds;
    [self.layer insertSublayer:gradientLayer atIndex:1];
    //    [self.containerView.layer addSublayer:gradientLayer];
    
    //set gradient colors
    gradientLayer.colors = @[(__bridge id)[UIColor redColor].CGColor, (__bridge id)[UIColor blueColor].CGColor];
    
    //set gradient start and end points
    gradientLayer.startPoint = CGPointMake(0, 0);
    gradientLayer.endPoint = CGPointMake(1, 1);
    self.backgroundColor = [UIColor clearColor];
    NSLog(@"bounds: %@", NSStringFromCGRect(self.bounds));
    self.bgLayer.bounds = self.bounds;
//    self.bgLayer.bounds = CGRectMake(0, 0, 10000, self.bounds.size.height);
}


@end
