//
//  ViewController.m
//  LSApplicationQueries
//
//  Created by Dou, Eddie on 10/28/15.
//  Copyright © 2015 Dou, Eddie. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self addBtnWithFrame:CGRectMake(30, 80, 90, 35) title:@"Skype"];
    [self addBtnWithFrame:CGRectMake(30, 130, 90, 35) title:@"Wechat"];
    [self addBtnWithFrame:CGRectMake(30, 180, 90, 35) title:@"Telephone"];
    [self addBtnWithFrame:CGRectMake(30, 230, 90, 35) title:@"SMS"];
    

}

-(void) addBtnWithFrame:(CGRect) rect title:(NSString *) title {
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame = rect;
    
    [btn setTitle:title forState:UIControlStateNormal];
    [btn setTitle:title forState:UIControlStateHighlighted];
    
    if ([title isEqualToString:@"Skype"]) {
        [btn addTarget:self action:@selector(openSkype) forControlEvents:UIControlEventTouchUpInside];
    } else if ([title isEqualToString:@"Wechat"]) {
        [btn addTarget:self action:@selector(openWeChat) forControlEvents:UIControlEventTouchUpInside];
    } else if ([title isEqualToString:@"Telephone"]) {
        [btn addTarget:self action:@selector(openTele) forControlEvents:UIControlEventTouchUpInside];
    } else if ([title isEqualToString:@"SMS"]) {
        [btn addTarget:self action:@selector(openSMS) forControlEvents:UIControlEventTouchUpInside];
    }
    
    [self.view addSubview:btn];
}

-(void)openSkype {
    NSString *str = @"skype://";
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:str]];
}

-(void)openWeChat {
    NSString *str = @"wechat://";
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:str]];
}

-(void)openTele {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel://8008808888"]];
}

-(void)openSMS {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"sms://800888"]];
}

@end
