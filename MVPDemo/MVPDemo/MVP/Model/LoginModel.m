//
//  LoginModel.m
//  MVPDemo
//
//  Created by zzb on 2017/7/24.
//  Copyright © 2017年 Demo. All rights reserved.
//

#import "LoginModel.h"

@implementation LoginModel
-(void)login:(NSString *)usrName pwd:(NSString *)pwd callback:(Callback)callback{
   [HttpUtils post:usrName pwd:pwd callback:^(NSString *result) {
       //1json解析
       //2保存数据到本地
       callback(result);
   }];

}
@end
