//
//  DemoPhotoList.h
//  MVPDemo
//
//  Created by zhangzb on 2017/8/17.
//  Copyright © 2017年 Demo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DemoPhotoList : NSObject
/** 图片数组 */
@property (nonatomic,strong) NSMutableArray * list;
-(instancetype)initWithName:(NSString *)listName;
@end
