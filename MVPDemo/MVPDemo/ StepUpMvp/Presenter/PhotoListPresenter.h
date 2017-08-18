//
//  PhotoListPresenter.h
//  MVPDemo
//
//  Created by zhangzb on 2017/8/17.
//  Copyright © 2017年 Demo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "DemoPresenterProtocol.h"
#import "DemoPhotoList.h"
@interface PhotoListPresenter : NSObject<UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout,DemoPresenterProtocol>
@property (nonatomic, weak) UICollectionView *view;
@property (nonatomic, weak) UIViewController *viewController;
@property (nonatomic) DemoPhotoList *photoList;

- (instancetype)initWithView:(UICollectionView *)view;
- (void)presentWithModel:(DemoPhotoList *)model viewController:(UIViewController *)viewController;
- (void)present;
@end
