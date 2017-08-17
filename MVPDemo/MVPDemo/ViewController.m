//
//  ViewController.m
//  MVPDemo
//
//  Created by zzb on 2017/7/24.
//  Copyright © 2017年 Demo. All rights reserved.
//

#import "ViewController.h"
#import "LoginViewDelegate.h"
#import "LoginPresenter.h"
@interface ViewController ()<LoginViewDelegate>
@property (nonatomic,strong)LoginPresenter *presenter;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //实例化
    _presenter =[[LoginPresenter alloc]init];
    //添加绑定
    [_presenter attachView:self];
    //登录请求
    [_presenter login:@"zzb" pwd:@"123456"];
}

//-(void)viewWillAppear:(BOOL)animated{
//    //实例化
//    _presenter =[[LoginPresenter alloc]init];
//    //添加绑定
//    [_presenter attachView:self];
//    //登录请求
//    [_presenter login:@"zzb" pwd:@"123456"];
//
//}

//实现协议的方法
-(void)onloginResult:(NSString *)result{
    //根据数据来源刷新UI
    NSLog(@"登录返回的结果: %@ ",result);

}

//注销
-(void)dealloc{
    //解除绑定
    [_presenter detachView];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
