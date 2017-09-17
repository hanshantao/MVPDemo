//
//  TableViewPresenter.m
//  MVPDemo
//
//  Created by zhangzb on 2017/8/17.
//  Copyright © 2017年 Demo. All rights reserved.
//

#import "TableViewPresenter.h"
#import "DemoTimeLine.h"
#import "DemoTextCell.h"
#import "DemoPhotoCell.h"
#import "DemoPhotoListCell.h"
#import "PhotoCollectionViewCell.h"
#import "TextViewController.h"
#import "PhotoViewController.h"

@interface TableViewPresenter()
/** <#注释#> */
@property (nonatomic,strong) DemoTimeLine * timeline;
@end

@implementation TableViewPresenter

-(instancetype)init{
    if (self = [super init]) {
        //实例化的时候，初始化样例数据
        NSLog(@"2 实例化的时候，初始化样例数据");
        self.timeline = [DemoTimeLine new];
    }
    return self;
}

-(instancetype)initWithView:(UITableView *)view{
    NSLog(@" 3 实例化tableview ");
    if (self = [self init]) {
        //绑定关系
        self.view = view;
        self.view.delegate = self;
        self.view.dataSource = self;
        //注册cell
        [self.view registerNib:[UINib nibWithNibName:@"DemoTextCell" bundle:nil] forCellReuseIdentifier:@"DemoTextCell"];
        [self.view registerNib:[UINib nibWithNibName:@"DemoPhotoCell" bundle:nil] forCellReuseIdentifier:@"DemoPhotoCell"];
        [self.view registerNib:[UINib nibWithNibName:@"DemoPhotoListCell" bundle:nil] forCellReuseIdentifier:@"DemoPhotoListCell"];
    }
    return self;
}

//number Of Sections
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

// number Of Rows In Section
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
   // NSLog(@"self.timeline.posts.count %lu",(unsigned long)self.timeline.posts.count);
    return self.timeline.posts.count;
}

//数据源方法
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
     NSLog(@" 4 tableView 数据源方法 ");
    id post = self.timeline.posts[indexPath.row];
    //根据随机的cell对应的类创建 identifier
    
    NSString *identifier = [NSString stringWithFormat:@"%@Cell", NSStringFromClass([post class])];
    NSLog(@"5 创建 %@  identifier",identifier);
    //创建cell
    id cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if ([identifier isEqualToString:@"DemoPhotoListCell"]) {
        NSLog(@"DemoPhotoListCell");
    }
    //如果对应的cell 实现了presenter方法
    if ([cell respondsToSelector:@selector(presenter)]) {
        //创建对应cell的DemoPresenterProtocol presenter
        NSObject<DemoPresenterProtocol> *presenter = [cell presenter];
        //presenter 构造函数
        NSLog(@"8 presentWithModel构造函数，进行数据填充");
        [presenter presentWithModel:post viewController:self.viewController];
    }
    
    return cell;
}
//height For Row At IndexPath
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 160.f;
}

//点击cell方法
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //获取当前cell类型
    id post = self.timeline.posts[indexPath.row];
    NSLog(@"======== post ========== %@",post);
    //如果是图片，则跳到大图查看
    if ([post isKindOfClass:[DemoPhoto class]]) {
        //创建photo vc
        PhotoViewController *imageViewController = [[PhotoViewController alloc]init];
        //通过对应页面的 presenter 进行传参数
        imageViewController.presenter.photo = post;
        //跳转
        [[self.viewController navigationController] pushViewController:imageViewController animated:YES];
      //如果是文字，则跳到文字查看
    } else if ([post isKindOfClass:[DemoText class]]) {
        TextViewController *textViewController =[[TextViewController alloc]init];
        //通过对应页面的 presenter 进行传参数
        textViewController.presenter.text = post;
        [[self.viewController navigationController] pushViewController:textViewController animated:YES];
    }
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
