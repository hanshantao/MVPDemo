//
//  HttpUtils.m
//  MVPDemo
//
//  Created by 恒信永利 on 2017/7/24.
//  Copyright © 2017年 Demo. All rights reserved.
//

#import "HttpUtils.h"

@implementation HttpUtils

//发起post请求
+(void)post:(NSString *)usrName pwd:(NSString *)pwd  callback:(Callback)callback{
    //1，URL
    NSURL *url =[[NSURL alloc]initWithString:@"testUrl"];
    //2,request
    NSMutableURLRequest *request =[[NSMutableURLRequest alloc]initWithURL:url];
    //3,请求参数
    request.HTTPMethod =@"POST";
    NSString *param = [[NSString alloc] initWithFormat:@"usrName=%@&password=%@",usrName,pwd ];
    request.HTTPBody=[param dataUsingEncoding:NSUTF8StringEncoding];
    //4 创建请求回话
    NSURLSession *session = [NSURLSession sharedSession];
    //5 创建请求任务
    NSURLSessionTask *task =[session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (error!=nil) {
            NSLog(@"登录失败");
            //回调
            NSString * result =[[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
            callback(result);
            
        }else{
           NSLog(@"登录成功");
           //回调
            NSString * result =[[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
            callback(result);
        
        }
    }];
    
    //6 执行请求
    [task resume];
    
    
    


}
@end
