//
//  TextViewController.m
//  MVPDemo
//
//  Created by zhangzb on 2017/8/17.
//  Copyright © 2017年 Demo. All rights reserved.
//

#import "TextViewController.h"

@interface TextViewController ()
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation TextViewController
- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"12 text view init");
        //创建对应的 TextPresenter
        self.presenter = [TextPresenter new];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationItem setTitle:@"文字"];
    NSLog(@"13 text view viewDidLoad");
    //绑定关系
    self.presenter.view = self;
    //绑定关系
    self.presenter.viewController = self;
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    //加载数据
    [self.presenter present];

}
-(void)setText:(NSString *)text{
    NSLog(@"13 接受从P传来的数据，显示在UI");
    self.textView.text = text;

}
@end
