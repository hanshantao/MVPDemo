//
//  PhotoViewController.m
//  MVPDemo
//
//  Created by zhangzb on 2017/8/17.
//  Copyright © 2017年 Demo. All rights reserved.
//

#import "PhotoViewController.h"

@interface PhotoViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation PhotoViewController

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"12 Photo view init");
        //创建对应的 TextPresenter
        self.presenter = [PhotoPresenter new];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationItem setTitle:@"图片"];
    NSLog(@" 12 Photo view viewDidLoad");
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

-(void)setImage:(UIImage *)image{
    NSLog(@"13 接受从P传来的数据，显示在UI");
    self.imageView.image = image;
}

@end
