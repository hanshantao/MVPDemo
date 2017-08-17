//
//  PhotoPresenter.h
//  MVPDemo
//
//  Created by zhangzb on 2017/8/17.
//  Copyright © 2017年 Demo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "DemoPhoto.h"
#import "DemoPresenterProtocol.h"

@protocol  PhotoProtocol

-(void)setImage:(UIImage *)image;

@end


@interface PhotoPresenter : NSObject<DemoPresenterProtocol>
/** <#注释#> */
@property (nonatomic,weak) NSObject<PhotoProtocol> * view;
/** <#注释#> */
@property (nonatomic,weak) UIViewController *viewController;
/** <#注释#> */
@property (nonatomic,strong) DemoPhoto * photo;


/** <#注释#> */
-(instancetype)initWithView:(UIView<PhotoProtocol>*)view;
/** <#注释#> */
-(void)presentWithModel:(DemoPhoto *)model viewController:(UIViewController *)viewController;
/** <#注释#> */
-(void)present;


@end
