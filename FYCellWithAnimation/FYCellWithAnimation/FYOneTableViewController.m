
//
//  FYOneTableViewController.m
//  FYCellWithAnimation
//
//  Created by fang on 15/12/26.
//  Copyright © 2015年 fang. All rights reserved.
//

#import "FYOneTableViewController.h"
#import "FYTableViewCell.h"
#define COUNT 100
#define HeightForRow 70

@interface FYOneTableViewController ()

@end

@implementation FYOneTableViewController

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
    
    [self animation1:cell];
    
    return cell;
}
//动画1
- (void)animation1:(FYTableViewCell *)cell{
    
    cell.imageView1.transform = CGAffineTransformMakeScale(0.5, 0.5);
    
    [UIView animateWithDuration:0.5 animations:^{
        cell.imageView1.transform = CGAffineTransformIdentity;
    }];
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return HeightForRow;
}
@end
