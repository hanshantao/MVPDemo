//
//  DemoPresenterProtocol.h
//  MVPDemo
//
//  Created by zhangzb on 2017/8/17.
//  Copyright © 2017年 Demo. All rights reserved.
//  total协议，其他的presenter都要遵守

#import <UIKit/UIKit.h>
@protocol DemoPresenterProtocol
@required//这里的view viewController 都是用来绑定View 和presenter关系的
-(void)setView:(NSObject *)view;
-(void)setViewController:(UIViewController *)viewController;
@optional
//对应UI控件赋值数据
-(void)present;
//绑定Presenter 和 view  model 关系
-(void)presentWithModel:(id)model viewController:(UIViewController *)viewController;
@end
