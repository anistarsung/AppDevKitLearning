//
//  ViewController.m
//  ADKModalMaskView
//
//  Created by Chih Feng Sung on 6/16/16.
//  Copyright © 2016 Yahoo. All rights reserved.
//

#import <AppDevKit.h>

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
    
    ADKModalMaskView *modalView = [[ADKModalMaskView alloc] initWithView:contextView
                                                              modalColor:[UIColor colorWithWhite:0.0f alpha:0.5f]
                                                             autoDismiss:YES];
    [modalView showInView:self.view
                 withAnimation:YES
                    completion:^(BOOL finished) {
                        // no-op
                    }];
}

@end
