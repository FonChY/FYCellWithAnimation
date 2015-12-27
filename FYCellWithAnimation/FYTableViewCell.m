//
//  FYTableViewCell.m
//  demo
//
//  Created by fang on 15/12/26.
//  Copyright © 2015年 fang. All rights reserved.
//

#import "FYTableViewCell.h"

@implementation FYTableViewCell

+ (instancetype)cellWithTableView:(UITableView *)tableView{
    static NSString *ID = @"cell";
    FYTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    
    if (cell == nil) {
        cell = [[self alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:ID];
        
    }
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(10, 10, 280, 40)];
    view.backgroundColor = [UIColor redColor];
    
    [cell.imageView1 addSubview:view];
    
    return cell;
}
//布置控件
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        UIImageView *imageView1 = [[UIImageView alloc]init];
        
        imageView1.frame  = CGRectMake(10, 5, 300, 60);

        imageView1.backgroundColor  = [UIColor  greenColor];
        self.imageView1 = imageView1;

       self.imageView1.image = [UIImage imageNamed:@"1"];
        

        [self addSubview:imageView1];

    }
    return self;
}
@end
