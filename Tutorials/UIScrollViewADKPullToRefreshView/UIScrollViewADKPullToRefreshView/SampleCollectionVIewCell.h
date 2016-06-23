//
//  SampleCollectionVIewCellCollectionViewCell.h
//  ADKNibSizeCalculator
//
//  Created by Chih Feng Sung on 6/21/16.
//  Copyright © 2016 Yahoo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SampleCollectionVIewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *thumbImageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;

@end
