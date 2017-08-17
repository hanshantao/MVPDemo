//
//  HttpUtils.h
//  MVPDemo
//
//  Created by zzb on 2017/7/24.
//  Copyright © 2017年 Demo. All rights reserved.
//

#import <Foundation/Foundation.h>
//网络请求回调 blok  代理
typedef void(^Callback) (NSString* result);

@interface HttpUtils : NSObject
//登录的POST请求
+(void)post:(NSString *)usrName pwd:(NSString *)pwd callback:(Callback)callback;
@end
