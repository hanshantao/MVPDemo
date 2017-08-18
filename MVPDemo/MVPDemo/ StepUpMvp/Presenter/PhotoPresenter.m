//
//  PhotoPresenter.m
//  MVPDemo
//
//  Created by zhangzb on 2017/8/17.
//  Copyright © 2017年 Demo. All rights reserved.
//

#import "PhotoPresenter.h"


@implementation PhotoPresenter

/** 构造函数 */
-(instancetype)initWithView:(UIView<PhotoProtocol>*)view{
    if (self = [super init]) {
      NSLog(@" 7 PhotoPresenter 构造函数中 绑定本身属性view 与DemoPhotoCell view 关系");
        self.view = view;
    }
    return self;
}

/** 实例化 */
-(void)presentWithModel:(DemoPhoto *)model viewController:(UIViewController *)viewController{
    NSLog(@"9 绑定数据源 viewController");
    self.photo = model;
    self.viewController = viewController;
    [self present];
}
/**  */
-(void)present{
    NSLog(@"10 给UI上的view 赋值");
    [self.view setImage:self.photo.image];
    
}
@end
