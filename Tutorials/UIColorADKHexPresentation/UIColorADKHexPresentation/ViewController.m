//
//  ViewController.m
//  UIColorADKHexPresentation
//
//  Created by Chih Feng Sung on 6/16/16.
//  Copyright © 2016 Yahoo. All rights reserved.
//

#import <AppDevKit.h>

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

    [[UISegmentedControl appearance] setTintColor:[UIColor ADKColorWithHexString:@"4002af"]];

}

- (IBAction)ecSegmentedControlTapHandler:(id)sender {

    // Auction: fbda18
    // Marketplace: 21b1e6
    // Shopping: 4c00a5


    switch (self.ecSegmentedControl.selectedSegmentIndex) {
        case 0:
            self.view.backgroundColor = [[UIColor ADKColorWithHexString:@"fbda18"] ADKColorShiftByBrightness:0.7f];
            self.logoImageView.image = [UIImage imageNamed:@"Auction"];
            break;
        case 1:
            self.view.backgroundColor = [[UIColor ADKColorWithHexString:@"21b1e6"] ADKColorShiftByBrightness:0.7f];
            self.logoImageView.image = [UIImage imageNamed:@"Marketplace"];
            break;
        case 2:
            self.view.backgroundColor = [[UIColor ADKColorWithHexString:@"4c00a5"] ADKColorShiftByBrightness:0.7f];
            self.logoImageView.image = [UIImage imageNamed:@"Shopping"];
            break;
    }
}

@end
