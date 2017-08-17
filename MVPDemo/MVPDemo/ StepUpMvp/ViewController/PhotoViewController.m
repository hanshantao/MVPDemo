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

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"Photo view");
    self.presenter = [PhotoPresenter new];
    self.presenter.view = self;
    self.presenter.viewController = self;
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.presenter present];
    
}
-(void)setImage:(UIImage *)image{

    self.imageView.image = image;
}

@end
