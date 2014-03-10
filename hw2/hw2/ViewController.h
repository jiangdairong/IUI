//
//  ViewController.h
//  hw2
//
//  Created by dairong on 2014/3/7.
//  Copyright (c) 2014年 dairong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic,strong)NSArray *image;
@property(nonatomic,strong)NSArray *TitleLabel;
@property(nonatomic,strong)NSArray *SubtitleLabel;

@property (weak, nonatomic) IBOutlet UITableView *mytableview;

@end
