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
/** <#注释#> */
@property (nonatomic,strong) PhotoPresenter * presenter;
@end
