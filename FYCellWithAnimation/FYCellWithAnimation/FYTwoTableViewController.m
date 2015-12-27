//
//  FYTwoTableViewController.m
//  FYCellWithAnimation
//
//  Created by fang on 15/12/26.
//  Copyright © 2015年 fang. All rights reserved.
//

#import "FYTwoTableViewController.h"
#import "FYTableViewCell.h"
#define COUNT 100
#define HeightForRow 70

@interface FYTwoTableViewController ()

@end

@implementation FYTwoTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //把分割线取消掉
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

#pragma mark - 数据源方法
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return COUNT;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    FYTableViewCell *cell = [FYTableViewCell cellWithTableView:tableView];
    
    [self animation2:cell];
    
    return cell;
}

//动画2
- (void)animation2:(FYTableViewCell *)cell{
    
    CGRect frame = CGRectMake(0, 0, 50, 10);
    
    cell.imageView1.frame  = frame;
    
    [UIView  animateWithDuration:0.6 animations:^{
        cell.imageView1.frame  =  CGRectMake(10, 5, 300, 60);
        
    }];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return HeightForRow;
}
@end
