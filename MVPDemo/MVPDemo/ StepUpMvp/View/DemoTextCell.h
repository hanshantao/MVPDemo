//
//  DemoTextCell.h
//  MVPDemo
//
//  Created by zhangzb on 2017/8/17.
//  Copyright © 2017年 Demo. All rights reserved.
//


#import <UIKit/UIKit.h>
#import "TextPresenter.h"

@interface DemoTextCell : UITableViewCell<TextProtocol>
/** presenter */
@property (nonatomic,strong) TextPresenter * presenter;
@end
