//
//  myCell.m
//  hw2
//
//  Created by dairong on 2014/3/8.
//  Copyright (c) 2014年 dairong. All rights reserved.
//

#import "myCell.h"

@implementation myCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)layoutSubviews {
    [super layoutSubviews];
    self.imageView.bounds = CGRectMake(0,0,80,120);
    self.imageView.frame = CGRectMake(0,0,80,120);
    self.imageView.contentMode = UIViewContentModeScaleToFill;
    
    CGRect tmpFrame = self.textLabel.frame;
    tmpFrame.origin.x = 150;
    self.textLabel.frame = tmpFrame;
    
    tmpFrame = self.detailTextLabel.frame;
    tmpFrame.origin.x = 150;
    self.detailTextLabel.frame = tmpFrame;
    
}
@end
