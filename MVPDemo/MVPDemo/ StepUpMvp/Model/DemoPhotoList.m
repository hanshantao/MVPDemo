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
        int index = arc4random_uniform(2);
        NSArray *listName = @[@"cat",@"canada_spring"];
        [self loadPhotoWithName:listName[index]];
    }


    return  self;
}


-(instancetype)initWithName:(NSString *)listName{
    if (self =[super init]) {
        [self loadPhotoWithName:listName];
    }
    return  self;
}

-(void)loadPhotoWithName:(NSString *)name{
    self.list = [NSMutableArray array];
    for (int i =0; i<10; i++) {
        UIImage * image = [UIImage imageNamed:[NSString stringWithFormat:@"@%@%zd",name,i]];
        [self.list addObject:[[DemoPhoto alloc]initWithImage:image]];
        
    }


}
@end
