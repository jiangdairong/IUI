//
//  secondCell.m
//  MyFirstApp
//
//  Created by dairong on 2014/4/11.
//  Copyright (c) 2014年 dairong. All rights reserved.
//

#import "secondCell.h"

@implementation secondCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
