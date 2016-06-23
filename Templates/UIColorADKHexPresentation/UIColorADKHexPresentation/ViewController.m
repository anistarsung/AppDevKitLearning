//
//  ViewController.m
//  UIColorADKHexPresentation
//
//  Created by Chih Feng Sung on 6/16/16.
//  Copyright © 2016 Yahoo. All rights reserved.
//

// TODO: import AppDevKit.h

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UISegmentedControl *ecSegmentedControl;
@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;
@property (weak, nonatomic) IBOutlet UIImageView *logoImageView;

- (IBAction)ecSegmentedControlTapHandler:(id)sender;

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

    // TODO: Use [[UISegmentedControl appearance] setTintColor:..........] with ADK color function to set segment control tint
}

- (IBAction)ecSegmentedControlTapHandler:(id)sender {

    // Auction: fbda18
    // Marketplace: 21b1e6
    // Shopping: 4c00a5


    switch (self.ecSegmentedControl.selectedSegmentIndex) {
        case 0:
            // TODO: Set back ground with ADK color function for Auction
            
            
            self.logoImageView.image = [UIImage imageNamed:@"Auction"];
            break;
        case 1:
            // TODO: Set back ground with ADK color function for Market Place
            
            
            self.logoImageView.image = [UIImage imageNamed:@"Marketplace"];
            break;
        case 2:
            // TODO: Set back ground with ADK color function for Shopping
            
            
            self.logoImageView.image = [UIImage imageNamed:@"Shopping"];
            break;
    }
}

@end
