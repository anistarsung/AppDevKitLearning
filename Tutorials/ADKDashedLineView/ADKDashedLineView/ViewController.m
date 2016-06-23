//
//  ViewController.m
//  ADKDashedLineView
//
//  Created by Chih Feng Sung on 6/16/16.
//  Copyright © 2016 Yahoo. All rights reserved.
//

#import "ViewController.h"
#import <AppDevKit.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self setupView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setupView {

    ADKDashedLineView *dashedLineView = [[ADKDashedLineView alloc] initWithFrame:CGRectMake(50.0f, 100.0f, 200.0f, 200.0f)];
    [self.view addSubview:dashedLineView];
    
}

@end
