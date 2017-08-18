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
    NSLog(@"6 创建了一个DemoTextCell 构造函数initWithView cell中调用");
    self.presenter = [[PhotoPresenter alloc] initWithView:self];
}

- (void)setImage:(UIImage *)image
{
     NSLog(@"11 接受从P传来的数据，显示在UI");
    self.photoImageView.image = image;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}


@end
