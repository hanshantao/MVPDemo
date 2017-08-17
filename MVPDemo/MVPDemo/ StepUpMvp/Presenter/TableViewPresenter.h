//
//  TableViewPresenter.h
//  MVPDemo
//
//  Created by zhangzb on 2017/8/17.
//  Copyright © 2017年 Demo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "DemoPresenterProtocol.h"

@interface TableViewPresenter : NSObject<UITableViewDelegate,UITableViewDataSource,DemoPresenterProtocol>
/** 整体的TableView */
@property (nonatomic,strong) UITableView * view;
/** 绑定关系的viewController */
@property (nonatomic,strong) UIViewController * viewController;


/**
 *  构造函数 实例化tableview
 */
-(instancetype)initWithView:(UITableView *)view;
@end
