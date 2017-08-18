//
//  TextPresenter.m
//  MVPDemo
//
//  Created by zhangzb on 2017/8/17.
//  Copyright © 2017年 Demo. All rights reserved.
//

#import "TextPresenter.h"

@implementation TextPresenter
/** 构造函数 cell中调用 */
-(instancetype)initWithView:(UIView<TextProtocol>*)view{
    if (self = [super init]) {
        NSLog(@" 7 TextPresenter 构造函数中 绑定本身属性view 与TextViewCell view 关系");
        self.view = view;
    }
    return self;
}

/** 数据源函数 */
-(void)presentWithModel:(DemoText *)model viewController:(UIViewController *)viewController{
    NSLog(@"9 绑定数据源 viewController");
    self.text = model;
    self.viewController = viewController;
    [self present];


}
/**  view 中text 与 绑定数据源中属性text 关系 */
-(void)present{
    NSLog(@"10 给UI上的view 赋值");
    [self.view setText: self.text.text];

}
@end
