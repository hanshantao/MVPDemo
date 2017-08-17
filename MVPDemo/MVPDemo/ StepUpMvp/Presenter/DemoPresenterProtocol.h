//
//  DemoPresenterProtocol.h
//  MVPDemo
//
//  Created by zhangzb on 2017/8/17.
//  Copyright © 2017年 Demo. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol DemoPresenterProtocol
@required
-(void)setView:(NSObject *)view;
-(void)setViewController:(UIViewController *)viewController;
@optional
-(void)present;
-(void)presentWithModel:(id)model viewController:(UIViewController *)viewController;
@end
