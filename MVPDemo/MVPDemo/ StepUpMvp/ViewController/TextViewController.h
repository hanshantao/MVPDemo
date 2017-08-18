//
//  TextViewController.h
//  MVPDemo
//
//  Created by zhangzb on 2017/8/17.
//  Copyright © 2017年 Demo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TextPresenter.h"

@interface TextViewController : UIViewController<TextProtocol>
/** TextViewController 的 TextPresenter */
@property (nonatomic,strong) TextPresenter * presenter;
//-(void)initPresent
@end
