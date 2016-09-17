//
//  ViewController.m
//  xcode02
//
//  Created by 丁贵强 on 15/11/28.
//  Copyright © 2015年 丁贵强. All rights reserved.
//

#import "ViewController.h"
#import "StatusMessageHandle.h"
#import "MessageView.h"


@interface ViewController ()

@property (nonatomic,strong) UIWindow *tatusWindow;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self performSelector:@selector(showMessageEvent) withObject:nil afterDelay:5.f];
}

- (void)showMessageEvent{
    [StatusMessageHandle showAndHideDuration:2.0f];
    
    [StatusMessageHandle showWithView:[MessageView messageViewWithTitle:@"dingguiqiang" backgroundColor:[UIColor whiteColor]] hideAfterSeconds:3.f];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
