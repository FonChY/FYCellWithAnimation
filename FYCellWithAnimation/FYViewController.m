//
//  FYViewController.m
//  FYCellWithAnimation
//
//  Created by fang on 15/12/26.
//  Copyright © 2015年 fang. All rights reserved.
//

#import "FYViewController.h"
#import "FYOneTableViewController.h"
#import "FYTwoTableViewController.h"
#import "FYThreeTableViewController.h"

@interface FYViewController ()

@end

@implementation FYViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    

    [self addSubviews];

}

- (void)addSubviews{
    //创建按钮1
    UIButton *btn1 = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 0, 0)];
    
    [btn1 setTitle:@"动画1" forState:UIControlStateNormal];
    
    [btn1 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [btn1 sizeToFit];
    //注册按钮监听事件
    [btn1 addTarget:self action:@selector(click1) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn1];
    //创建按钮2

    UIButton *btn2 = [[UIButton alloc] initWithFrame:CGRectMake(100, 200, 0, 0)];
    
    [btn2 setTitle:@"动画2" forState:UIControlStateNormal];
    
    [btn2 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [btn2 sizeToFit];
    //注册按钮监听事件

    [btn2 addTarget:self action:@selector(click2) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn2];
    //创建按钮3

    UIButton *btn3 = [[UIButton alloc] initWithFrame:CGRectMake(100, 300, 0, 0)];
    
    [btn3 setTitle:@"动画3" forState:UIControlStateNormal];
    
    [btn3 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [btn3 sizeToFit];
    //注册按钮监听事件

    [btn3 addTarget:self action:@selector(click3) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn3];
}

#pragma mark 实现监听方法

- (void)click1{
    FYOneTableViewController *vc = [[FYOneTableViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}
- (void)click2{
    FYTwoTableViewController *vc = [[FYTwoTableViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
    
}
- (void)click3{
    FYThreeTableViewController *vc = [[FYThreeTableViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}
@end
