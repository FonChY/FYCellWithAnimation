//
//  FYTableViewCell.h
//  demo
//
//  Created by fang on 15/12/26.
//  Copyright © 2015年 fang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FYTableViewCell : UITableViewCell

@property (nonatomic ,weak) UIImageView  *imageView1;
//自定义cell方法
+(instancetype)cellWithTableView:(UITableView  *)tableView;

@end
