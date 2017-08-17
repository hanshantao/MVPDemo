//
//  DemoTextCell.m
//  MVPDemo
//
//  Created by zhangzb on 2017/8/17.
//  Copyright © 2017年 Demo. All rights reserved.
//

#import "DemoTextCell.h"
@interface DemoTextCell()

@property (weak, nonatomic) IBOutlet UILabel *label;


@end
@implementation DemoTextCell

- (void)awakeFromNib
{
    [super awakeFromNib];
    //构造函数 进行实例化
    NSLog(@"构造函数 initWithView cell中调用");
    self.presenter = [[TextPresenter alloc] initWithView:self];
}

//赋值方法
- (void)setText:(NSString *)text
{
    self.label.text = text;
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

@end
