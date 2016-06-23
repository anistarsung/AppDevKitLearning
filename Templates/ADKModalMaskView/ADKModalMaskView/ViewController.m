//
//  ViewController.m
//  ADKModalMaskView
//
//  Created by Chih Feng Sung on 6/16/16.
//  Copyright © 2016 Yahoo. All rights reserved.
//

#import "ViewController.h"
#import "ContextView.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *sampleButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sampleButtonTapHandler:(id)sender {

    ContextView *contextView = [[[NSBundle mainBundle] loadNibNamed:@"ContextView" owner:self options:nil] objectAtIndex:0];

    //using contextView to make a mask view
    //mask color 0.5 alpah black: [UIColor colorWithWhite:0.0f alpha:0.5f]
    //show the mask view
}

@end
