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
        self.view = view;
    }
    return self;
}

/** 实例化 */
-(void)presentWithModel:(DemoPhoto *)model viewController:(UIViewController *)viewController{
    self.photo = model;
    self.viewController = viewController;
    [self present];
    
    
}
/**  */
-(void)present{
    [self.view setImage:self.photo.image];
    
}
@end
