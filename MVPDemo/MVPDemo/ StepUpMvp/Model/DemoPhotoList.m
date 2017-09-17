//
//  DemoPhotoList.m
//  MVPDemo
//
//  Created by zhangzb on 2017/8/17.
//  Copyright © 2017年 Demo. All rights reserved.
//

#import "DemoPhotoList.h"
#import "DemoPhoto.h"

@implementation DemoPhotoList

-(instancetype)init{
    if (self = [super init]) {
        //两组图片中随机一组，然后在选取10张
        int index = arc4random_uniform(2);
        NSArray *listNames = @[@"cat",@"dog"];
        [self loadPhotoWithName:listNames[index]];
    }
    return  self;
}


-(instancetype)initWithName:(NSString *)listName{
    if (self =[super init]) {
        //根据传来的图片类型 加载 list 图片数组
        [self loadPhotoWithName:listName];
    }
    return  self;
}

-(void)loadPhotoWithName:(NSString *)name{
    self.list = [NSMutableArray array];
    //图片组中随机10张
    for (int i =1; i<10; i++) {
        UIImage * image = [UIImage imageNamed:[NSString stringWithFormat:@"%@%zd",name,i]];
        [self.list addObject:[[DemoPhoto alloc]initWithImage:image]];
        
    }
}
@end
