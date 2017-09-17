//
//  DemoTimeLine.m
//  MVPDemo
//
//  Created by zhangzb on 2017/8/17.
//  Copyright © 2017年 Demo. All rights reserved.
//

#import "DemoTimeLine.h"
#import "DemoText.h"
#import "DemoPhoto.h"
#import "DemoPhotoList.h"

@implementation DemoTimeLine
//构造函数,随机生成 3中类型的帖子类数组
-(instancetype)init{
    if (self=[super init]) {
        self.posts = [NSMutableArray new];
        //在3中不同的cell中随机生成20个cell的帖子数组
        
        for (int i =0; i<20; i++) {
           NSArray * classes = @[@"DemoText",@"DemoPhoto",@"DemoPhotoList"];
            //实例化后 添加到posts数组中
            [self.posts addObject:[NSClassFromString(classes[arc4random_uniform(3)]) new]];
            
        }
        NSLog(@"在3中不同的cell中随机生成20个cell的帖子数组");
    }
    return self;
}

@end
