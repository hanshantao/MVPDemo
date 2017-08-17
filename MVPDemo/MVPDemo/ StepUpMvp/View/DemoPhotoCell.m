//
//  DemoPhotoCell.m
//  MVPDemo
//
//  Created by zhangzb on 2017/8/17.
//  Copyright © 2017年 Demo. All rights reserved.
//

#import "DemoPhotoCell.h"

@interface DemoPhotoCell()

@property (weak, nonatomic) IBOutlet UIImageView *photoImageView;


@end
@implementation DemoPhotoCell

- (void)awakeFromNib
{
    [super awakeFromNib];
    self.presenter = [[PhotoPresenter alloc] initWithView:self];
}

- (void)setImage:(UIImage *)image
{
    self.photoImageView.image = image;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}


@end
