//
//  ViewController.m
//  ADKGradientView
//
//  Created by Chih Feng Sung on 6/16/16.
//  Copyright © 2016 Yahoo. All rights reserved.
//

#import <AppDevKit.h>

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet ADKGradientView *gradientView;
@property (weak, nonatomic) IBOutlet ADKDashedLineView *dashLineView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setupView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setupView
{
    self.gradientView.layer.cornerRadius = 4.0;
    self.gradientView.layer.masksToBounds = YES;
    //gradient view: left top to right bottom
    //gradient begin color: 1DB2E8
    //gradient end color: 380180
}

@end
