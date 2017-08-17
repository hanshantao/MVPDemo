//
//  PhotoCollectionViewCell.m
//  MVPDemo
//
//  Created by zhangzb on 2017/8/17.
//  Copyright © 2017年 Demo. All rights reserved.
//

#import "PhotoCollectionViewCell.h"
@interface PhotoCollectionViewCell()

@property (weak, nonatomic) IBOutlet UIImageView *collectionImageView;

@end
@implementation PhotoCollectionViewCell

- (void)awakeFromNib
{
    [super awakeFromNib];
    self.presenter = [[PhotoPresenter alloc] initWithView:self];
}

- (void)setImage:(UIImage *)image
{
    self.collectionImageView.image = image;
}

@end
