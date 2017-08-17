//
//  TextPresenter.h
//  MVPDemo
//
//  Created by zhangzb on 2017/8/17.
//  Copyright © 2017年 Demo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "DemoPresenterProtocol.h"
#import "DemoText.h"

@protocol  TextProtocol

-(void)setText:(NSString *)text;

@end


@interface TextPresenter : NSObject<DemoPresenterProtocol>
/** 对应的text view */
@property (nonatomic,weak) NSObject<TextProtocol> * view;
/** 绑定的  viewController*/
@property (nonatomic,weak) UIViewController *viewController;
/** 数据源 */
@property (nonatomic,strong) DemoText * text;


/** 构造函数 cell中调用 */
-(instancetype)initWithView:(UIView<TextProtocol>*)view;
/** 数据源方法 */
-(void)presentWithModel:(DemoText *)model viewController:(UIViewController *)viewController;
/**  */
-(void)present;
@end
