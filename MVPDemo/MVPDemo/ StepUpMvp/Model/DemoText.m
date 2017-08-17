//
//  DemoText.m
//  MVPDemo
//
//  Created by zhangzb on 2017/8/17.
//  Copyright © 2017年 Demo. All rights reserved.
//

#import "DemoText.h"

@implementation DemoText
//随机生成文字内容
-(instancetype)init{
    if (self=[super init]) {
        if (arc4random_uniform(2)>0) {
            self.text=@"iOS 11 introduces ARKit, a new framework that allows you to easily create unparalleled augmented reality experiences for iPhone and iPad. By blending digital objects and information with the environment around you, ARKit takes apps beyond the screen, freeing them to interact with the real world in entirely new ways.";
        }else{
            self.text=@"如果你写过 C 或者 Objective-C 代码，那你应该很熟悉这种形式——在 Swift 中，这行代码就是一个完整的程序。你不需要为了输入输出或者字符串处理导入一个单独的库。全局作用域中的代码会被自动当做程序的入口点，所以你也不需要main函数。你同样不需要在每个语句结尾写上分号。";
        
        }
        
        
        
        
        
    }

    return self;
}


@end
