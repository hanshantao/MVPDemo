//
//  PhotoListPresenter.m
//  MVPDemo
//
//  Created by zhangzb on 2017/8/17.
//  Copyright © 2017年 Demo. All rights reserved.
//

#import "PhotoListPresenter.h"
#import "PhotoCollectionViewCell.h"
#import "PhotoViewController.h"
@implementation PhotoListPresenter

//实例化
- (instancetype)initWithView:(UICollectionView *)view
{
    if (self = [super init]) {
        self.view = view;
        self.view.delegate = self;
        self.view.dataSource = self;
        //注册cell
        [self.view registerNib:[UINib nibWithNibName:@"PhotoCollectionViewCell" bundle:nil]forCellWithReuseIdentifier:@"PhotoCollectionViewCell"];
    }
    return self;
}

//绑定关系
- (void)presentWithModel:(DemoPhotoList *)model viewController:(UIViewController *)viewController
{
    //绑定数据关系，viewController
    self.photoList = model;
    self.viewController = viewController;
    //初始化数据
    [self present];
}

//重载数据
- (void)present
{
    [self.view reloadData];
}

// numberOfItemsInSection
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.photoList.list.count;
}

//cellForItemAtIndexPath
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    //创建 PhotoCollectionViewCell 创建cell的时候与cell对应的presenter 也创建了
    PhotoCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"PhotoCollectionViewCell" forIndexPath:indexPath];
    //赋值数据
    cell.presenter.photo = self.photoList.list[indexPath.row];
    //list中的每一个显示对应的图片
    [cell.presenter present];
    
    return cell;
}

//sizeForItemAtIndexPath
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(CGRectGetHeight(self.view.bounds), CGRectGetHeight(self.view.bounds));
}

//didSelectItemAtIndexPath 点击
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    //取出点击的图片
    id post = self.photoList.list[indexPath.row];
    //点击的是图片
    if ([post isKindOfClass:[DemoPhoto class]]) {
        PhotoViewController *imageViewController = [[PhotoViewController alloc]init];
        imageViewController.presenter.photo = post;
        [[self.viewController navigationController] pushViewController:imageViewController animated:YES];
    }
    [collectionView deselectItemAtIndexPath:indexPath animated:YES];
}

@end
