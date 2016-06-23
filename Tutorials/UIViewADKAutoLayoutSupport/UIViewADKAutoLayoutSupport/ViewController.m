//
//  ViewController.m
//  ADKGradientView
//
//  Created by Chih Feng Sung on 6/16/16.
//  Copyright © 2016 Yahoo. All rights reserved.
//

#import "ViewController.h"
#import <AppDevKit.h>

@interface ViewController ()
@property (weak, nonatomic) IBOutlet ADKGradientView *gradientView;
@property (weak, nonatomic) IBOutlet ADKDashedLineView *dashLineView;



@property (strong, nonatomic) UITapGestureRecognizer *tapGestureRecognizer;
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
    self.gradientView.beginColor = [UIColor ADKColorWithHexNumber:0x1DB2E8];
    self.gradientView.endColor = [UIColor ADKColorWithHexNumber:0x380180];
    self.gradientView.blendsType = ADKBlendsTypeFromLeftTopToRightBottom;
}

- (IBAction)tapButton:(UIButton *)button
{
    [button ADKHideViewWidth];
    [button ADKHideTrailingConstraint];
}


@end
