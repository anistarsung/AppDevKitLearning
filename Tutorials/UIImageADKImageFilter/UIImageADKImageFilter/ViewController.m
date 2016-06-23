//
//  ViewController.m
//  UIImageADKImageFilter
//
//  Created by Chih Feng Sung on 6/16/16.
//  Copyright © 2016 Yahoo. All rights reserved.
//

#import <AppDevKit.h>

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *sampleButton;
@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;

- (IBAction)sampleButtonTapHandler:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setupView {

    UIImage *originalImage = [UIImage imageNamed:@"Love"];
    UIImage *defaultImage = [UIImage ADKImage:originalImage replaceColor:[UIColor redColor]];
    UIImage *highlightedImage = [UIImage ADKImage:originalImage replaceColor:[UIColor orangeColor]];
    
    [self.sampleButton setImage:defaultImage forState:UIControlStateNormal];
    [self.sampleButton setTitle:@"CLICK" forState:UIControlStateNormal];
    
    [self.sampleButton setImage:highlightedImage forState:UIControlStateHighlighted];
    [self.sampleButton setTitle:@"PRESS" forState:UIControlStateHighlighted];
    
}

- (IBAction)sampleButtonTapHandler:(id)sender {
}

@end
