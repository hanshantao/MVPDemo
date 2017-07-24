//
//  LoginModel.h
//  MVPDemo
//
//  Created by 恒信永利 on 2017/7/24.
//  Copyright © 2017年 Demo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HttpUtils.h"
//M层（数据层）
@interface LoginModel : NSObject
//登录
-(void)login:(NSString *)usrName pwd:(NSString *)pwd callback:(Callback)callback;
    //登录数据来源模块，要独立出来，不能与loginModel耦合
    /*
      1，数据库模块
      2，网络模块（服务器）
      3，本地文件（json,plist,txt,xml等）
    */
@end
