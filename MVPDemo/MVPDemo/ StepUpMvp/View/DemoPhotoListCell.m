//
//  DemoPhotoListCell.m
//  MVPDemo
//
//  Created by zhangzb on 2017/8/17.
//  Copyright © 2017年 Demo. All rights reserved.
//

#import "DemoPhotoListCell.h"

@interface DemoPhotoListCell()


@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;


@end
@implementation DemoPhotoListCell


- (void)awakeFromNib {
    [super awakeFromNib];
     NSLog(@"5 创建了一个DemoPhotoListCell 构造函数initWithView cell中调用");
     self.presenter = [[PhotoListPresenter alloc] initWithView:self.collectionView];
    
}



@end
