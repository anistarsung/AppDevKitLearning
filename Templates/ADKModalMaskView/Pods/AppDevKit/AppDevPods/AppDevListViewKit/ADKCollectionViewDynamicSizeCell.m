//
//  ADKCollectionViewDynamicSizeCell.m
//  AppDevKit
//
//  Created by Chih Feng Sung on 6/8/15.
//  Copyright © 2015, Yahoo Inc.
//  Licensed under the terms of the BSD License.
//  Please see the LICENSE file in the project root for terms.
//

#import "ADKCollectionViewDynamicSizeCell.h"
#import "UIView+ADKAutoLayoutSupport.h"

@implementation ADKCollectionViewDynamicSizeCell

- (void)awakeFromNib
{
    [super awakeFromNib];

    for (UIView *subView in self.contentView.subviews) {
        if ([subView isKindOfClass:[UILabel class]]) {
            subView.initializedMargin = CGRectGetWidth(self.bounds) - CGRectGetWidth(subView.bounds);
        }
    }
}

- (void)layoutSubviews
{
    [super layoutSubviews];

    for (UIView *subView in self.contentView.subviews) {
        if ([subView isKindOfClass:[UILabel class]]) {
            UILabel *label = (UILabel *)subView;
            label.preferredMaxLayoutWidth = CGRectGetWidth(self.bounds) - label.initializedMargin;
        }
    }
}

@end
