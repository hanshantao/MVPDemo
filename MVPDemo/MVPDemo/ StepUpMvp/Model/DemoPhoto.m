//
//  DemoPhoto.m
//  MVPDemo
//
//  Created by zhangzb on 2017/8/17.
//  Copyright © 2017年 Demo. All rights reserved.
//

#import "DemoPhoto.h"

@implementation DemoPhoto
-(instancetype)init{
    if (self=[super init]) {
        int index = arc4random_uniform(8) +1;
        self.image = [UIImage imageNamed:[NSString stringWithFormat:@"cat%zd",index]];
    }
     //  NSLog(@"随机生成图片数据");
    return self;
}


//实例化 DemoPhoto的 image
-(instancetype)initWithImage:(UIImage *)image{
    if (self = [super init]) {
        self.image = image;
    }
    return self;
}
@end
