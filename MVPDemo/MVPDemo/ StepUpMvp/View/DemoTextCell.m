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
    NSLog(@"6 创建了一个DemoTextCell 构造函数initWithView cell中调用");
    self.presenter = [[TextPresenter alloc] initWithView:self];
}

//赋值方法
- (void)setText:(NSString *)text
{
    NSLog(@"11 接受从P传来的数据，显示在UI");
    self.label.text = text;
}




@end
