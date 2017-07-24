//
//  LoginPresenter.m
//  MVPDemo
//
//  Created by 恒信永利 on 2017/7/24.
//  Copyright © 2017年 Demo. All rights reserved.
//

#import "LoginPresenter.h"
#import "LoginModel.h"

@interface LoginPresenter()
@property (nonatomic,strong) LoginModel *loginModel;
@property (nonatomic,weak) id<LoginViewDelegate> loginViewDelegate;

@end

@implementation LoginPresenter
//初始化
-(instancetype)init{
    self=[super init];
    if (self) {
        //实例化
        _loginModel = [[LoginModel alloc]init];
    }
    return self;
}

//登录
-(void)login:(NSString *)usrName pwd:(NSString * )pwd{
   [_loginModel login:usrName pwd:pwd callback:^(NSString *result) {
       if (_loginViewDelegate !=nil) {//通过代理协议回调返回数据给到V层更新UI
          [_loginViewDelegate onloginResult:result];
       }
   }];
}

//绑定V和P
-(void)attachView:(id<LoginViewDelegate>)loginViewDelegate{
    _loginViewDelegate =loginViewDelegate;
}

//解除 V和P绑定 ViewController退出了，网络请求不需要跟新UI
-(void)detachView{
    _loginViewDelegate=nil;
}

@end
