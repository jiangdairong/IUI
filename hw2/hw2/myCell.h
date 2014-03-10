//
//  myCell.h
//  hw2
//
//  Created by dairong on 2014/3/8.
//  Copyright (c) 2014年 dairong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface myCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *TitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *SubtitleLabel;
@property (strong, nonatomic) IBOutlet UIImageView *imageView;


@end
