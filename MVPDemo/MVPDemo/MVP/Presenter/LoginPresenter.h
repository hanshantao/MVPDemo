//
//  LoginPresenter.h
//  MVPDemo
//
//  Created by zzb on 2017/7/24.
//  Copyright © 2017年 Demo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LoginViewDelegate.h"
//P层 中介
@interface LoginPresenter : NSObject

//登录
-(void)login:(NSString *)usrName pwd:(NSString * )pwd;

//绑定V和P
-(void)attachView:(id<LoginViewDelegate>)loginViewDelegate;

//解除 V和P绑定 ViewController退出了，网络请求不需要跟新UI
-(void)detachView;


@end
