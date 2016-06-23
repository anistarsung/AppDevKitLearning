//
//  ViewController.m
//  UIScrollViewADKPullToRefreshView
//
//  Created by Chih Feng Sung on 6/16/16.
//  Copyright © 2016 Yahoo. All rights reserved.
//

// TODO: import AppDevKit

#import "ViewController.h"
#import "SampleCollectionVIewCell.h"
#import "LSPullToRefreshView.h"

@interface ViewController () <UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property (nonatomic, assign) NSInteger numberOfCell;

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

- (void)dealloc
{
    self.collectionView.delegate = nil;
    self.collectionView.dataSource = nil;
}

- (void)setupView
{
    self.numberOfCell = 1;

    UINib *simpleNib = [UINib nibWithNibName:@"SampleCollectionVIewCell" bundle:nil];
    [self.collectionView registerNib:simpleNib forCellWithReuseIdentifier:@"SampleCollectionVIewCell"];

    self.collectionView.delegate = self;
    self.collectionView.dataSource = self;

    [self setupPullToRefreshView];
}

- (void)setupPullToRefreshView
{
    self.collectionView.alwaysBounceVertical = YES;

    LSPullToRefreshView *refreshView = [[LSPullToRefreshView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, CGRectGetWidth(self.view.frame), 60.0f)];

    // TODO: Add pull-to-refresh view on collection view and update data in action handler.
    // NOTO: Don't forget to stop animation
}

#pragma mark - UICollectionView

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.numberOfCell;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    SampleCollectionVIewCell *cell = (SampleCollectionVIewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:@"SampleCollectionVIewCell" forIndexPath:indexPath];

    cell.thumbImageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"IceCream%ld", (long)(indexPath.item % 11 + 1)]];

    cell.contentView.backgroundColor = [UIColor lightGrayColor];

    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(CGRectGetWidth(self.view.frame), 96.0f);
    //return [[ADKNibSizeCalculator sharedInstance] sizeForNibNamed:@"SampleCollectionVIewCell" withStyle:ADKNibFixedHeightScaling];
}

@end
