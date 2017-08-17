//
//  MainViewController.m
//  MVPDemo
//
//  Created by zhangzb on 2017/8/17.
//  Copyright © 2017年 Demo. All rights reserved.
//

#import "MainViewController.h"
#import "RootNavController.h"
#import "TestViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationItem setTitle:@"MVPdemo"];
     self.view.backgroundColor = [UIColor grayColor];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    TestViewController * vc =[[TestViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];

}

@end
