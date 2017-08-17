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

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"text view");
    self.presenter = [TextPresenter new];
    self.presenter.view = self;
    self.presenter.viewController = self;
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.presenter present];

}
-(void)setText:(NSString *)text{
    self.textView.text = text;

}
@end
