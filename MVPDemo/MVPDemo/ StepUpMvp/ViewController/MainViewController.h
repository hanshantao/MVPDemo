//
//  MainViewController.h
//  MVPDemo
//
//  Created by zhangzb on 2017/8/17.
//  Copyright © 2017年 Demo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TableViewPresenter.h"
@interface MainViewController : UIViewController
/** tableView 的 presenter  */
@property (nonatomic,strong) TableViewPresenter * presenter;
@end
