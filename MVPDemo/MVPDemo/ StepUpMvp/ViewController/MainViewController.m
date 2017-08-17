//
//  MainViewController.m
//  MVPDemo
//
//  Created by zhangzb on 2017/8/17.
//  Copyright © 2017年 Demo. All rights reserved.
//

#import "MainViewController.h"


@interface MainViewController ()
//主体的tableView
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //头部
    [self.navigationItem setTitle:@"MVPdemo"];
    
    //调用tableView的presenter的构造方法，创建tableView
    NSLog(@"主页面调用 initWithTableView 进行实例化");
    self.presenter = [[TableViewPresenter alloc]initWithView:self.tableView];
    
    //绑定关系，绑定presenter对应的viewController
    self.presenter.viewController = self;
    
}

































@end
