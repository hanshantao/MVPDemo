//
//  DemoPhoto.h
//  MVPDemo
//
//  Created by zhangzb on 2017/8/17.
//  Copyright © 2017年 Demo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface DemoPhoto : NSObject
/** 图片 */
@property (nonatomic,strong)  UIImage * image;
-(instancetype)initWithImage:(UIImage *)image;

@end
