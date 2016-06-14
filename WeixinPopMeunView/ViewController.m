//
//  ViewController.m
//  WeixinPopMeunView
//
//  Created by MoHuilin on 16/6/13.
//  Copyright © 2016年 bitmian. All rights reserved.
//

#import "ViewController.h"

#import "PopMeunView.h"

@interface ViewController ()<PopMeunViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGFloat widthHeight = 100;
    NSInteger maxCol = 3;
    CGFloat startX = 50;
    CGFloat startY = 100;
    NSInteger currentRow = 0;
    NSInteger currentCol = 0;
    for (int i = 0; i < 12; i ++) {
        UIButton *button = [UIButton new];
        if (i % maxCol == 0) { //换行
            currentRow ++;
        }
        currentCol = i % maxCol;
        button.frame = CGRectMake(startX + currentCol * widthHeight, startY + currentRow * widthHeight, widthHeight, widthHeight);
        [button setTitle:[NSString stringWithFormat:@"Button%ld-%ld",(long)currentRow,(long)currentCol] forState:UIControlStateNormal];
        [self.view addSubview:button];
        button.backgroundColor = [UIColor orangeColor];
        button.tag = i;
        [button addTarget:self action:@selector(buttonTap:) forControlEvents:UIControlEventTouchUpInside];
    }
}

- (void)buttonTap:(UIButton *)sender
{
    
    PopMeunView *popView = [[PopMeunView alloc] initWithOrigin:sender.center width:100 height:44 * 2 type:sender.tag color:[UIColor colorWithRed:0.2737 green:0.2737 blue:0.2737 alpha:1.0]];
    popView.rowHeight = 44;
    popView.titles = @[@"扫一扫",@"添加好友"].copy;
    popView.images = @[].copy;
    popView.titleColor = [UIColor orangeColor];
    popView.delegate = self;
    
    [popView popView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - PopMeunViewDelegate

- (void)selectIndex:(NSInteger)index{
    NSLog(@"%ld",(long)index);
}

@end
