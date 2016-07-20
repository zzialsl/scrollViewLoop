//
//  ViewController.m
//  LoopScrollView
//
//  Created by user on 16/7/4.
//  Copyright © 2016年 Li. All rights reserved.
//

#import "ViewController.h"
#import "AdScrollView.h"
#define KScreenWidth [UIScreen mainScreen].bounds.size.width
#define KScreenHight [UIScreen mainScreen].bounds.size.hight
#define KOUNT 4
@interface ViewController ()<UIScrollViewDelegate>
@property (nonatomic,strong)  AdScrollView * scrollView;
@end

@implementation ViewController{
    BOOL click;
//    CABasicAnimation *scaleAnimation;
    UIImageView *image;
}

- (void)viewDidLoad {
    
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];

    _scrollView = [[AdScrollView alloc]initWithFrame:CGRectMake(0, 164, KScreenWidth, 150)];
   // AdDataModel * dataModel = [AdDataModel adDataModelWithImageNameAndAdTitleArray];
    //如果滚动视图的父视图由导航控制器控制,必须要设置该属性(ps,猜测这是为了正常显示,导航控制器内部设置了UIEdgeInsetsMake(64, 0, 0, 0))
//    scrollView.contentInset = UIEdgeInsetsMake(-64, 0, 0, 0);
    
    
    _scrollView.imageNameArray = @[@"image0",@"image1"];
    _scrollView.PageControlShowStyle = UIPageControlShowStyleRight;
    _scrollView.pageControl.pageIndicatorTintColor = [UIColor whiteColor];
    
    [_scrollView setAdTitleArray:@[@"0123",@"1",@"2",@"3"] withShowStyle:AdTitleShowStyleLeft];
    
    _scrollView.pageControl.currentPageIndicatorTintColor = [UIColor purpleColor];
    [self.view addSubview:_scrollView];

  
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
