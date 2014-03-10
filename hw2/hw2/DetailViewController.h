//
//  DetailViewController.h
//  hw2
//
//  Created by dairong on 2014/3/8.
//  Copyright (c) 2014年 dairong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController{
    
    IBOutlet UIImageView *image3;
    IBOutlet UIImageView *image2;
    IBOutlet UIImageView *image1;
}

@property (weak,nonatomic) IBOutlet UIScrollView *scroller;


@property (strong, nonatomic) IBOutlet UINavigationItem *navi;



@property(strong,nonatomic) NSArray *DetailModal;

@end
