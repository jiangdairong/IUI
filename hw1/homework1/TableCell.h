//
//  TableCell.h
//  homework1
//
//  Created by dairong on 2014/3/1.
//  Copyright (c) 2014年 dairong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableCell : UITableViewCell
@property(strong,nonatomic)IBOutlet UILabel *TitleLabel;
@property(strong,nonatomic)IBOutlet UILabel *DescriptionLabel;
@property(strong,nonatomic)IBOutlet UIImageView *ThumbImage;

@end
