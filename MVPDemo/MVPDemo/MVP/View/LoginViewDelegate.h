//
//  LoginViewDelegate.h
//  MVPDemo
//
//  Created by zzb on 2017/7/24.
//  Copyright © 2017年 Demo. All rights reserved.
//

#import <Foundation/Foundation.h>
//交互协议
@protocol LoginViewDelegate <NSObject>
//登录交互协议
-(void)onloginResult:(NSString *)result;
@end
