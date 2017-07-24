//
//  ViewController.h
//  MVPDemo
//
//  Created by 恒信永利 on 2017/7/24.
//  Copyright © 2017年 Demo. All rights reserved.
//
/*
 MVC
 Model
 UIView以及子类
 UIViewConreoller以及子类
 
 MVP (数据层和UI层完全隔离)
 M 数据层 （数据库 网络 文件等与数据相关的数据层）---（不是model）
 V UIView以及子类 + UIViewConreoller以及子类  只是创建UI和刷新数据
 P 中介 ( 用于关联 M 和 V )
    v和p交互 解决方案 代理 （定义交互协议）
    p层关联M层和V层，持有M层对象的引用和V层对象的引用
 
 */



#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


@end

