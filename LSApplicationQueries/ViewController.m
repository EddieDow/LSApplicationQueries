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
    
    BOOL isOpenable = [[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:str]];
    NSLog(@"WhiteList does not contian skype,  skype canOpenURL return  =  %d", isOpenable);
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:str]];
}

-(void)openWeChat {
    NSString *str = @"wechat://";
    
    BOOL isOpenable = [[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:str]];
    
     NSLog(@"WhiteList contain wechat,  wechat canOpenURL return  =  %d", isOpenable);
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:str]];
}

-(void)openTele {
    NSString *str = @"tel://8008808888";
    
    BOOL isOpenable = [[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:str]];
    
    NSLog(@"WhiteList does not contian Tel,  TEL canOpenURL return  =  %d", isOpenable);
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString: str]];
}

-(void)openSMS {
    NSString *str = @"sms://800888";
    
    BOOL isOpenable = [[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:str]];
    
     NSLog(@"WhiteList does not contian SMS,  SMS canOpenURL return  =  %d", isOpenable);
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"sms://800888"]];
}

@end
