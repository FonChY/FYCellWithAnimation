//
//  FYThreeTableViewController.m
//  FYCellWithAnimation
//
//  Created by fang on 15/12/26.
//  Copyright © 2015年 fang. All rights reserved.
//

#import "FYThreeTableViewController.h"
#import "FYTableViewCell.h"
#define COUNT 100
#define HeightForRow 70

@interface FYThreeTableViewController ()

@end

@implementation FYThreeTableViewController

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
    
    [self animation3:cell];
    
    return cell;
}

//动画3
- (void)animation3:(FYTableViewCell *)cell{
    
    CATransition *transition = [CATransition animation];
    
    transition.type  = @"cube";
    
    transition.duration  = 2.0;
    
    CATransform3D tan = CATransform3DMakeRotation(M_PI,0 ,20, 0);
    
    [UIView animateWithDuration:1.0 animations:^{
        
        cell.imageView1.layer.transform = tan;
    } completion:^(BOOL finished) {
        
        
        [UIView animateWithDuration:1.0 animations:^{
            
            cell.imageView1.layer.transform = CATransform3DIdentity;
            
        }];
        
    }];
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return HeightForRow;
}

@end
