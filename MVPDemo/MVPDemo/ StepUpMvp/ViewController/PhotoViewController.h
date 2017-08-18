//
//  PhotoViewController.h
//  MVPDemo
//
//  Created by zhangzb on 2017/8/17.
//  Copyright © 2017年 Demo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PhotoPresenter.h"
@interface PhotoViewController : UIViewController<PhotoProtocol>
/** PhotoViewController 的  PhotoPresenter*/
@property (nonatomic,strong) PhotoPresenter * presenter;
@end
