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

- (instancetype)initWithView:(UICollectionView *)view
{
    if (self = [super init]) {
        self.view = view;
        self.view.delegate = self;
        self.view.dataSource = self;
    }
    
    return self;
}

- (void)presentWithModel:(DemoPhotoList *)model viewController:(UIViewController *)viewController
{
    self.photoList = model;
    self.viewController = viewController;
    [self present];
}

- (void)present
{
    [self.view reloadData];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.photoList.list.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
     
    PhotoCollectionViewCell *cell = cell =[[NSBundle mainBundle]loadNibNamed:@"PhotoCollectionViewCell" owner:nil options:nil][0];;
    cell.presenter.photo = self.photoList.list[indexPath.row];
    [cell.presenter present];
    
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(CGRectGetHeight(self.view.bounds), CGRectGetHeight(self.view.bounds));
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    id post = self.photoList.list[indexPath.row];
    if ([post isKindOfClass:[DemoPhoto class]]) {
        PhotoViewController *imageViewController = [[self.viewController storyboard] instantiateViewControllerWithIdentifier: NSStringFromClass([PhotoViewController class])];
        imageViewController.presenter.photo = post;
        [[self.viewController navigationController] pushViewController:imageViewController animated:YES];
    }
    
    [collectionView deselectItemAtIndexPath:indexPath animated:YES];
}

@end
